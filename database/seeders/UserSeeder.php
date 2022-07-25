<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\Seeder;
// use App\Models\Admin;
use App\Models\{User};

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = [
            [
                [ 
                    "email" => "mddamuli@gmail.com",
                    "password" => "password",
                    "accType" => "Super Admin",
                    "position" => "Managing Director",
                    "status" => "1",
                    "remember_token" => NULL, 
                ],
                // [ 
                //     "email" => "fleetofficer1@gmail.com",
                //     "password" => "password",
                //     "accType" => "Fleet Officer",
                //     "position" => "Fleet Officer",
                //     "status" => "1",
                //     "remember_token" => NULL, 
                // ],
                // [ 
                //     "email" => "fleetofficer2@gmail.com", 
                //     "password" => "password",
                //     "accType" => "Fleet Officer",
                //     "position" => "Fleet Officer",
                //     "status" => "1",
                //     "remember_token" => NULL,
                // ],
                // [ 
                //     "email" => "admin1@gmail.com",
                //     "password" => "password",
                //     "accType" => "Amin Department",
                //     "position" => "Staff",
                //     "status" => "1",
                //     "remember_token" => NULL,
                // ],
                // [ 
                //     "email" =>  "fuel1@gmail.com",
                //     "password" => "password",
                //     "accType" => "Fuel Department",
                //     "position" => "Fuel Department",
                //     "status" => "1",
                //     "remember_token" => NULL,
                // ],
                // [ 
                //     "email" =>  "Mechanic1@gmail.com",
                //     "password" => "password",
                //     "accType" => "Maintenance Department",
                //     "position" => "Maintenance Department",
                //     "status" => "1",
                //     "remember_token" => NULL,
                // ],
                // [ 
                //     "email" =>  "finance1@gmail.com",
                //     "password" => "password",
                //     "accType" => "Finance Department",
                //     "position" => "Finance Department",
                //     "status" => "1",
                //     "remember_token" => NULL, 
                // ],
                // [ 
                //     "email" =>  "storekeeper1@gmail.com",
                //     "password" => "password",
                //     "accType" => "Storekeeper",
                //     "position" => "Storekeeper",
                //     "status" => "1",
                //     "remember_token" => NULL, 
                // ]
            ]
        ];
        foreach ($users as $user) {
            User::create([
                "email" =>  $user["email"],
                "password" => Hash::make($user["password"]),
                "accType" => $user["accType"],
                "position" => $user["position"],
                "status" => $user["status"],
                "remember_token" => $user["remember_token"], 
            ]);
        }
    }
}
