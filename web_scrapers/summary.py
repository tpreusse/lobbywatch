# -*- coding: utf-8 -*-

# Created by Markus Roth in March 2017 (maroth@gmail.com)
# Licenced via Affero GPL v3

class SummaryRow:
    def __init__(self, parlamentarier, count):
        self.number = str(count)
        self.symbol1 = "="
        self.symbol2 = "="
        self.parlamentarier_name = display_name(parlamentarier["names"])
        self.parlamentarier_id = str(parlamentarier["id"])
        self.gast1_name = ""
        self.gast1_id = ""
        self.gast1_changes = ""
        self.gast2_name = ""
        self.gast2_id = ""
        self.gast2_changes = ""
        self.gast1_name_old = ""
        self.gast1_id_old = ""
        self.gast2_name_old = ""
        self.gast2_id_old = ""

    def set_guest_1(self, person):
        if person:
            self.gast1_name = display_name(person["names"])
            if "id" in person:
                self.gast1_id = str(person["id"])

    def set_removed_guest_1(self, person):
        if person:
            self.gast1_name_old = display_name(person["names"])
            self.gast1_id_old = str(person["id"])
            self.symbol1 = "-"

    def set_new_guest_1(self, person):
        self.set_guest_1(person)
        if person:
            self.symbol1 = "+"


    def set_guest_2(self, person):
        if person:
            self.gast2_name = display_name(person["names"])
            if "id" in person:
                self.gast2_id = str(person["id"])

    def set_removed_guest_2(self, person):
        if person:
            self.gast2_name_old = display_name(person["names"])
            self.gast2_id_old = str(person["id"])
            self.symbol2 = "-"

    def set_new_guest_2(self, person):
        self.set_guest_2(person)
        if person:
            self.symbol2 = "+"

    def set_guest_1_changes(self, changes):
        self.gast1_changes = changes
        self.symbol1 = "≠"

    def set_guest_2_changes(self, changes):
        self.gast2_changes = changes
        self.symbol2 = "≠"

    def update_symbols(self):
        if self.gast1_name_old != "":
            if self.gast1_name != "":
                self.symbol1 = "±"

        if self.gast2_name_old != "":
            if self.gast2_name != "":
                self.symbol2 = "±"


    def write(self):
        self.update_symbols()
        return "{}| {}{} | {} | {} ‖ {} | {} | {} ‖ {} | {} | {} ‖ {} | {} | {} | {} |".format(
            self.number.ljust(3),
            self.symbol1,
            self.symbol2,
            self.parlamentarier_name[:14].ljust(14),
            self.parlamentarier_id.rjust(3),
            self.gast1_name[:12].ljust(12),
            self.gast1_id.rjust(3),
            self.gast1_changes.ljust(13),
            self.gast2_name[:12].ljust(12),
            self.gast2_id.rjust(3),
            self.gast2_changes.ljust(13),
            self.gast1_name_old[:12].ljust(12),
            self.gast1_id_old.rjust(3),
            self.gast2_name_old[:12].ljust(12),
            self.gast2_id_old.rjust(3))

def display_name(names):
    name = names[0]
    if len(name.replace(" ", "")) < 4:
        name += " " + names[1]
        if len(name.replace(" ", "")) < 5:
            name += " " + names[2]
    return name


def write_header():
    return "No |    | Parlamentarier | ID  ‖ Gast 1       | ID  | Changes       ‖ Gast 2       | ID  | Changes       ‖ -Gast 1      | ID  | -Gast 2      | ID  |"
