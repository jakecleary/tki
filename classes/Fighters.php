<?php
// The Kabal Invasion - A web-based 4X space game
// Copyright © 2014 The Kabal Invasion development team, Ron Harwood, and the BNT development team
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU Affero General Public License as
//  published by the Free Software Foundation, either version 3 of the
//  License, or (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU Affero General Public License for more details.
//
//  You should have received a copy of the GNU Affero General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// File: classes/Fighters.php

namespace Tki;

class Fighters
{
    public static function destroy(\PDO $pdo_db, int $sector, $num_fighters)
    {
        $sql = "SELECT * FROM {$pdo_db->prefix}sector_defense WHERE sector_id=:sector_id AND defense_type ='F' ORDER BY quantity ASC";
        $stmt = $pdo_db->prepare($sql);
        $stmt->bindParam(':sector_id', $sector);
        $stmt->execute();
        $defense_present = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($defense_present !== null && $num_fighters > 0)
        {
            foreach ($defense_present as $tmp_defense)
            {
                if ($tmp_defense['quantity'] > $num_fighters)
                {
                    $sql = "UPDATE {$pdo_db->prefix}sector_defense SET quantity = :quantity - ? WHERE defense_id = :defense_id";
                    $stmt = $pdo_db->prepare($sql);
                    $stmt->bindParam(':quantity', $quantity);
                    $stmt->bindParam(':defense_id', $tmp_defense['defense_id']);
                    $stmt->execute();
                    $num_fighters = 0;
                }
                else
                {
                    $sql = "DELETE FROM {$pdo_db->prefix}sector_defense WHERE defense_id = :defense_id";
                    $stmt = $pdo_db->prepare($sql);
                    $stmt->bindParam(':defense_id', $tmp_defense['defense_id']);
                    $stmt->execute();
                    $num_fighters -= $tmp_defense['quantity'];
                }
            }
        }
    }
}
