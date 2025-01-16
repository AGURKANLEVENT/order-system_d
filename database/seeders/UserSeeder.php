<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Faker\Factory as Faker;

class UserSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();

        User::create([
            'name' => 'Admin User',
            'email' => $faker->unique()->safeEmail,
            'password' => bcrypt('password')
        ]);
    }
}