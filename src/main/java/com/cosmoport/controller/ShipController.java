package com.cosmoport.controller;

import com.cosmoport.model.Ship;
import com.cosmoport.service.ShipService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

@Controller
public class ShipController {

    @Autowired
    private ShipService shipService;

    @GetMapping("/ships")
    public String allShips(Model model) {
        model.addAttribute("ships",shipService.getAllShips());
        return "allShips";
    }

    @GetMapping("/ships/{id}")
    public String shipById (@PathVariable Long id, Model model) {
        model.addAttribute("shipById", shipService.getById(id));
        return "shipById";
    }

    @GetMapping("/create")
    public String showNewForm (Model model) {
        model.addAttribute("ship", new Ship());
        return "newForm";
    }

    @PostMapping("/create")
    public String createNewShip (@ModelAttribute @Valid Ship ship, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "newForm";
        }
        shipService.save(ship);
        return "redirect:/ships";
    }

    @PostMapping("/ships/delete/{id}")
    public String deleteShipById (@PathVariable Long id) {
        shipService.deleteById(id);
        return "redirect:/ships";
    }

    @PostMapping("/ships/update")
    public String updateShip(@ModelAttribute("shipById") @Valid Ship ship, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "newForm";
        }
        shipService.save(ship);
        return "redirect:/ships";
    }

    @GetMapping("/search")
    public String searchShips(@RequestParam("name") String name, Model model) {
        List<Ship> ships = shipService.findByName(name);
        if (ships.isEmpty()) {
            model.addAttribute("message", "Такого корабля нет");
        } else {
            model.addAttribute("ships", ships);
        }
        return "allShips";
    }

}
