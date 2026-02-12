return [
    // Renderer
    'DB_HOST'         => 'localhost',
    'DB_NAME'         => 'main_website',
    'DB_USER'         => 'admin',
    'DB_PASS'         => '8cde05cfe34f3326117f454de31d7efee7ac9c71fe68690b',
    'SERIOUS_KEY'     => 'key',
    'ALLOWED_TYPES'   => ['item', 'user', 'preview'],
    'FOCUS_ITEMS'     => true,
    'FACES_PNG'       => false,

    // Site
    'SITE_NAME' => 'BLOX City',

    // Directories
    'DIRECTORIES' => [
        'ROOT'       => '/var/www/storage',
        'UPLOADS'    => '/var/www/storage/uploads',
        'THUMBNAILS' => '/var/www/storage/thumbnails'
    ],

    // Colors
    'ITEM_BODY_COLOR' => '#d3d3d3',

    // Avatar
    'AVATARS' => [
        'DEFAULT' => '/var/www/bloxcity/render/blend/nobevels_avatar.blend',
        'TOOL'  => '/var/www/bloxcity/render/blend/nobevels_avatar_gadget.blend',
    ],

    // Headshot Camera
    'HEADSHOT_CAMERA' => [
        'LOCATION' => [
            'X' => '-0.61512',
            'Y' => '-2.12488',
            'Z' => '2.62124'
        ],

        'ROTATION' => [
            'X' => '83.919',
            'Y' => '-0.351',
            'Z' => '-20.147'
        ]
    ],

    // Image Sizes
    'IMAGE_SIZES' => [
        'USER_AVATAR'   => 512,
        'USER_HEADSHOT' => 256,
        'ITEM'          => 375
    ]
];
