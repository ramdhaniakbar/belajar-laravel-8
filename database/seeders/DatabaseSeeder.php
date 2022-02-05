<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'Ramdhani Akbar',
            'username' => 'ramdhaniakbar',
            'email' => 'ramdhaniakbarmuhamad@gmail.com',
            'password' => bcrypt('password1')
        ]);

        // User::create([
        //     'name' => 'Asep Saepulloh',
        //     'email' => 'saepulloha133@gmail.com',
        //     'password' => bcrypt('password2')
        // ]);

        User::factory(5)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);
        
        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Category::create([
            'name' => 'Graphic Design',
            'slug' => 'graphic-design'
        ]);

        Category::create([
            'name' => 'System Analyst',
            'slug' => 'system-analyst'
        ]);
        
        Post::factory(30)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia hic harum provident impedit aut, eligendi mollitia rem tenetur voluptas quod obcaecati a alias enim.',
        //     'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia hic harum provident impedit aut, eligendi mollitia rem tenetur voluptas quod obcaecati a alias enim. Qui nihil accusantium dolorem aliquid ad tempore nulla consequatur repellat magni fugiat, fuga porro, officia repudiandae deserunt perferendis illum quibusdam quis non iure, debitis esse. A autem eos sapiente ut, accusamus debitis in, officia, voluptatum odit veritatis exercitationem quasi provident ad et dolor neque. Mollitia iure pariatur perspiciatis quibusdam explicabo corrupti, placeat illo sed dolorem, reiciendis corporis enim unde exercitationem, voluptatem distinctio soluta nam ex beatae! Deserunt voluptates repudiandae excepturi placeat soluta. Rem ab earum molestiae!',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia hic harum provident impedit aut, eligendi mollitia rem tenetur voluptas quod obcaecati a alias enim.',
        //     'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia hic harum provident impedit aut, eligendi mollitia rem tenetur voluptas quod obcaecati a alias enim. Qui nihil accusantium dolorem aliquid ad tempore nulla consequatur repellat magni fugiat, fuga porro, officia repudiandae deserunt perferendis illum quibusdam quis non iure, debitis esse. A autem eos sapiente ut, accusamus debitis in, officia, voluptatum odit veritatis exercitationem quasi provident ad et dolor neque. Mollitia iure pariatur perspiciatis quibusdam explicabo corrupti, placeat illo sed dolorem, reiciendis corporis enim unde exercitationem, voluptatem distinctio soluta nam ex beatae! Deserunt voluptates repudiandae excepturi placeat soluta. Rem ab earum molestiae!',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia hic harum provident impedit aut, eligendi mollitia rem tenetur voluptas quod obcaecati a alias enim.',
        //     'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia hic harum provident impedit aut, eligendi mollitia rem tenetur voluptas quod obcaecati a alias enim. Qui nihil accusantium dolorem aliquid ad tempore nulla consequatur repellat magni fugiat, fuga porro, officia repudiandae deserunt perferendis illum quibusdam quis non iure, debitis esse. A autem eos sapiente ut, accusamus debitis in, officia, voluptatum odit veritatis exercitationem quasi provident ad et dolor neque. Mollitia iure pariatur perspiciatis quibusdam explicabo corrupti, placeat illo sed dolorem, reiciendis corporis enim unde exercitationem, voluptatem distinctio soluta nam ex beatae! Deserunt voluptates repudiandae excepturi placeat soluta. Rem ab earum molestiae!',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Keempat',
        //     'slug' => 'judul-keempat',
        //     'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia hic harum provident impedit aut, eligendi mollitia rem tenetur voluptas quod obcaecati a alias enim.',
        //     'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia hic harum provident impedit aut, eligendi mollitia rem tenetur voluptas quod obcaecati a alias enim. Qui nihil accusantium dolorem aliquid ad tempore nulla consequatur repellat magni fugiat, fuga porro, officia repudiandae deserunt perferendis illum quibusdam quis non iure, debitis esse. A autem eos sapiente ut, accusamus debitis in, officia, voluptatum odit veritatis exercitationem quasi provident ad et dolor neque. Mollitia iure pariatur perspiciatis quibusdam explicabo corrupti, placeat illo sed dolorem, reiciendis corporis enim unde exercitationem, voluptatem distinctio soluta nam ex beatae! Deserunt voluptates repudiandae excepturi placeat soluta. Rem ab earum molestiae!',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
