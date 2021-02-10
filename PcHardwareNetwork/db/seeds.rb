# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create! :email => 'admin3@pcnetwork.com', :password => 'topsecret', :password_confirmation => 'topsecret', :admin => true

99.times do |n|
    email = "pc-builder-#{n+1}@example.com"
    password = "sifra112233"
    User.create!(email: email,
                password: password,
                password_confirmation: password)
end

# 10 procesora
Processor.create!([
    {
        brand: "AMD",
        name: "AMD Ryzen 5 3600",
        core_count: 6,
        core_clock: 3.6,
        boost_clock: 4.2,
        tdp: 65,
        integrated_graphics: "None",
        smt: "Yes",
        price: 200
    },
    {
        brand: "AMD",
        name: "AMD Ryzen 7 3700X",
        core_count: 8,
        core_clock: 3.6,
        boost_clock: 4.4,
        tdp: 65,
        integrated_graphics: "None",
        smt: "Yes",
        price: 329
    },
    {
        brand: "AMD",
        name: "AMD Ryzen 5 5600X",
        core_count: 6,
        core_clock: 3.7,
        boost_clock: 4.6,
        tdp: 65,
        integrated_graphics: "None",
        smt: "Yes",
        price: 350
    },
    {
        brand: "AMD",
        name: "AMD Ryzen 9 5900X",
        core_count: 12,
        core_clock: 3.7,
        boost_clock: 4.8,
        tdp: 105,
        integrated_graphics: "None",
        smt: "Yes",
        price: 750
    },
    {
        brand: "AMD",
        name: "AMD Ryzen 5 2600",
        core_count: 6,
        core_clock: 3.4,
        boost_clock: 3.9,
        tdp: 65,
        integrated_graphics: "None",
        smt: "Yes",
        price: 190
    },
    {
        brand: "Intel",
        name: "Intel Core i7-10700K",
        core_count: 8,
        core_clock: 3.8,
        boost_clock: 5.1,
        tdp: 125,
        integrated_graphics: "Intel UHD Graphics 630",
        smt: "Yes",
        price: 345
    },
    {
        brand: "Intel",
        name: "Intel Core i9-10900K",
        core_count: 10,
        core_clock: 3.7,
        boost_clock: 5.3,
        tdp: 125,
        integrated_graphics: "Intel UHD Graphics 630",
        smt: "Yes",
        price: 455
    },
    {
        brand: "Intel",
        name: "Intel Core i7-9700K",
        core_count: 8,
        core_clock: 3.6,
        boost_clock: 4.9,
        tdp: 95,
        integrated_graphics: "Intel UHD Graphics 630",
        smt: "Yes",
        price: 300
    },
    {
        brand: "Intel",
        name: "Intel Core i3-10100",
        core_count: 4,
        core_clock: 3.6,
        boost_clock: 4.3,
        tdp: 65,
        integrated_graphics: "Intel UHD Graphics 630",
        smt: "Yes",
        price: 118
    },
    {
        brand: "Intel",
        name: "Intel Core i5-9600K",
        core_count: 6,
        core_clock: 3.7,
        boost_clock: 4.6,
        tdp: 95,
        integrated_graphics: "Intel UHD Graphics 630",
        smt: "No",
        price: 200
    },
])

# 10 hladnjaka za procesor
ProcessorCooler.create!([
    {
        brand: "Cooler Master",
        name: "Cooler Master Hyper 212 EVO",
        fan_rpm: 2000,
        noise_level: 36,
        color: "Black",
        radiator_size: 120, 
        price: 35
    },
    {
        brand: "NZXT",
        name: "NZXT Kraken X53",
        fan_rpm: 2000,
        noise_level: 36,
        color: "Black",
        radiator_size: 240, 
        price: 130
    },
    {
        brand: "Corsair",
        name: "Corsair H100i RGB PLATINUM",
        fan_rpm: 2400,
        noise_level: 37,
        color: "Black/Silver",
        radiator_size: 240, 
        price: 243
    },
    {
        brand: "be quiet!",
        name: "be quiet! Dark Rock Pro 4",
        fan_rpm: 1500,
        noise_level: 24,
        color: "Black",
        radiator_size: 120, 
        price: 90
    },
    {
        brand: "Noctua",
        name: "Noctua NH-D15",
        fan_rpm: 1500,
        noise_level: 24,
        color: "Brown",
        radiator_size: 120, 
        price: 90
    },
    {
        brand: "Corsair",
        name: "Corsair iCUE H100i RGB PRO XT",
        fan_rpm: 2400,
        noise_level: 37,
        color: "Black",
        radiator_size: 240, 
        price: 120
    },
    {
        brand: "Asus",
        name: "Asus ROG STRIX LC 360 RGB White",
        fan_rpm: 2500,
        noise_level: 37,
        color: "White",
        radiator_size: 360, 
        price: 252
    },
    {
        brand: "be quiet!",
        name: "be quiet! Pure Rock Slim",
        fan_rpm: 2000,
        noise_level: 25,
        color: "Silver",
        radiator_size: 120, 
        price: 31
    },
    {
        brand: "ARCTIC",
        name: "ARCTIC Liquid Freezer II 280",
        fan_rpm: 2000,
        noise_level: 36,
        color: "Black",
        radiator_size: 120, 
        price: 35
    },
    {
        brand: "Cooler Master",
        name: "Cooler Master MasterLiquid ML360R RGB",
        fan_rpm: 1700,
        noise_level: 28,
        color: "Black",
        radiator_size: 280, 
        price: 115
    }
])

# 10 grafickih kartija
VideoCard.create!([
    {
        brand: "MSI",
        name: "MSI GAMING X TRIO",
        chipset: "GeForce RTX 3060 Ti",
        memory: 8,
        core_clock: 1410,
        boost_clock: 1830,
        color: "Black",
        length: 323,
        price: 380
    },
    {
        brand: "EVGA",
        name: "EVGA FTW3 ULTRA GAMING",
        chipset: "GeForce RTX 3090",
        memory: 24,
        core_clock: 1400,
        boost_clock: 1800,
        color: "Black",
        length: 300,
        price: 2600
    },
    {
        brand: "Asus",
        name: "Asus TUF GAMING OC",
        chipset: "GeForce GTX 1660 SUPER",
        memory: 6,
        core_clock: 1530,
        boost_clock: 1845,
        color: "Black",
        length: 206,
        price: 558
    },
    {
        brand: "Gigabyte",
        name: "Gigabyte GAMING OC",
        chipset: "GeForce RTX 3070",
        memory: 8,
        core_clock: 1500,
        boost_clock: 1815,
        color: "Black / Silver",
        length: 286,
        price: 1000
    },
    {
        brand: "ASRock",
        name: "ASRock Phantom Gaming D",
        chipset: "Radeon RX 570",
        memory: 4,
        core_clock: 1168,
        boost_clock: 1244,
        color: "Black",
        length: 236,
        price: 360
    },
    {
        brand: "EVGA",
        name: "EVGA Gaming iCX",
        chipset: "GeForce GTX 1080 Ti",
        memory: 11,
        core_clock: 1569,
        boost_clock: 1683,
        color: "Silver",
        length: 300,
        price: 1290
    },
    {
        brand: "Sapphire",
        name: "Sapphire PULSE",
        chipset: "Radeon RX 5600 XT",
        memory: 6,
        core_clock: 1247,
        boost_clock: 1750,
        color: "Black / Red",
        length: 254,
        price: 659
    },
    {
        brand: "EVGA",
        name: "EVGA BLACK GAMING",
        chipset: "GeForce RTX 2070 SUPER",
        memory: 8,
        core_clock: 1605,
        boost_clock: 1770,
        color: "Black",
        length: 270,
        price: 1205
    },
    {
        brand: "MSI",
        name: "MSI GAMING X",
        chipset: "Radeon RX 5700 XT",
        memory: 8,
        core_clock: 1730,
        boost_clock: 1980,
        color: "Silver / Black",
        length: 297,
        price: 931
    },
    {
        brand: "Asus",
        name: "Asus GTX750TI-OC-2GD5",
        chipset: "GeForce GTX 750 Ti",
        memory: 2,
        core_clock: 1072,
        boost_clock: 1150,
        color: "Black / Red",
        length: 217,
        price: 80
    }
])

# 10 RAM memorija
Memory.create!([
    {
        brand: "Corsair",
        name: "Corsair Vengeance LPX 16 GB",
        speed: "DDR4-3200",
        size: 16,
        color: "Black / Yellow",
        cas_latency: 16,
        price: 90
    },
    {
        brand: "G.Skill",
        name: "G.Skill Ripjaws V 16 GB",
        speed: "DDR4-3600",
        size: 16,
        color: "Black",
        cas_latency: 18,
        price: 108
    },
    {
        brand: "Team T-FORCE",
        name: "Team T-FORCE VULCAN Z 16 GB",
        speed: "DDR4-3200",
        size: 16,
        color: "Black",
        cas_latency: 16,
        price: 78
    },
    {
        brand: "G.Skill",
        name: "G.Skill Trident Z Neo 32 GB",
        speed: "DDR4-3600",
        size: 32,
        color: "Black / Silver",
        cas_latency: 16,
        price: 208
    },
    {
        brand: "ADATA",
        name: "ADATA XPG SPECTRIX D60G 16 GB",
        speed: "DDR4-3200",
        size: 16,
        color: "RGB",
        cas_latency: 16,
        price: 85
    },
    {
        brand: "Corsair",
        name: "Corsair Vengeance LPX 32 GB",
        speed: "DDR4-3200",
        size: 32,
        color: "Black / Yellow",
        cas_latency: 16,
        price: 125
    },
    {
        brand: "G.Skill",
        name: "G.Skill Trident Z RGB 128 GB",
        speed: "DDR4-4000",
        size: 128,
        color: "Black",
        cas_latency: 18,
        price: 800
    },
    {
        brand: "Corsair",
        name: "Corsair Vengeance LPX 16 GB",
        speed: "DDR4-2400",
        size: 16,
        color: "Red",
        cas_latency: 16,
        price: 62
    },
    {
        brand: "Corsair",
        name: "Corsair Vengeance LPX 16 GB",
        speed: "DDR4-3200",
        size: 16,
        color: "Black / Yellow",
        cas_latency: 16,
        price: 90
    },
    {
        brand: "OLOy",
        name: "OLOy MD4U083216BJDA 16 GB",
        speed: "DDR4-3200",
        size: 16,
        color: "Black",
        cas_latency: 16,
        price: 78
    }
])

# 10 hard diskova/ssd-a
Storage.create!([
    {
        brand: "Seagate",
        name: "Seagate Barracuda Compute",
        capacity: 2000,
        storage_type: "7200RPM",
        cache: 256,
        form_factor: "3.5\"",
        interface: "SATA 6 Gb/s",
        price: 56
    },
    {
        brand: "Samsung",
        name: "Samsung 970 Evo",
        capacity: 1000,
        storage_type: "SSD",
        cache: 1024,
        form_factor: "M.2-2280",
        interface: "M.2 (M)",
        price: 140
    },
    {
        brand: "Samsung",
        name: "Samsung 970 EVO Plus",
        capacity: 2000,
        storage_type: "SSD",
        cache: 1024,
        form_factor: "M.2-2280",
        interface: "M.2 (M)",
        price: 330
    },
    {
        brand: "Crucial",
        name: "Crucial P2",
        capacity: 500,
        storage_type: "SSD",
        cache: 128,
        form_factor: "M.2-2280",
        interface: "M.2 (M)",
        price: 60
    },
    {
        brand: "Western Digital",
        name: "Western Digital Gold",
        capacity: 18000,
        storage_type: "7200RPM",
        cache: 512,
        form_factor: "3.5\"",
        interface: "SATA 6 Gb/s",
        price: 580
    },
    {
        brand: "Sabrent",
        name: "Sabrent Rocket Q",
        capacity: 8000,
        storage_type: "SSD",
        cache: 512,
        form_factor: "M.2-2280",
        interface: "M.2 (M)",
        price: 1300
    },
    {
        brand: "Western Digital",
        name: "Western Digital Blue",
        capacity: 2000,
        storage_type: "5400RPM",
        cache: 256,
        form_factor: "3.5\"",
        interface: "SATA 6 Gb/s",
        price: 50
    },
    {
        brand: "Kingston",
        name: "Kingston A400",
        capacity: 480,
        storage_type: "SSD",
        cache: 128,
        form_factor: "2.5\"",
        interface: "SATA 6 Gb/s",
        price: 50
    },
    {
        brand: "Seagate",
        name: "Seagate Barracuda Compute",
        capacity: 2000,
        storage_type: "7200RPM",
        cache: 256,
        form_factor: "3.5\"",
        interface: "SATA 6 Gb/s",
        price: 56
    },
    {
        brand: "Intel",
        name: "Intel 665p",
        capacity: 1000,
        storage_type: "SSD",
        cache: 256,
        form_factor: "M.2-2280",
        interface: "M.2 (M)",
        price: 90
    }
])

# 10 kucista
PcCase.create!([
    {
        brand: "NZXT",
        name: "NZXT H510",
        case_type: "ATX Mid Tower",
        color: "White",
        power_supply: "None",
        side_panel_window: "Tempered Glass",
        external_bays: 0,
        internal_bays: 2,
        price: 70
    },
    {
        brand: "Corsair",
        name: "Corsair 4000D Airflow",
        case_type: "ATX Mid Tower",
        color: "Black",
        power_supply: "None",
        side_panel_window: "Tinted Tempered Glass",
        external_bays: 0,
        internal_bays: 2,
        price: 95
    },
    {
        brand: "Lian Li",
        name: "Lian Li PC-O11 Dynamic",
        case_type: "ATX Full Tower",
        color: "Black",
        power_supply: "None",
        side_panel_window: "Tempered Glass",
        external_bays: 0,
        internal_bays: 2,
        price: 242
    },
    {
        brand: "Cooler Master",
        name: "Cooler Master MasterBox Q300L",
        case_type: "MicroATX Mini Tower",
        color: "Black",
        power_supply: "None",
        side_panel_window: "Acrylic",
        external_bays: 0,
        internal_bays: 1,
        price: 45
    },
    {
        brand: "Fractal Design",
        name: "Fractal Design Meshify C",
        case_type: "ATX Mid Tower",
        color: "Black",
        power_supply: "None",
        side_panel_window: "Tinted Tempered Glass",
        external_bays: 0,
        internal_bays: 2,
        price: 100
    },
    {
        brand: "Deepcool",
        name: "Deepcool MATREXX 30",
        case_type: "MicroATX Mini Tower",
        color: "Black",
        power_supply: "None",
        side_panel_window: "Tempered Glass",
        external_bays: 1,
        internal_bays: 3,
        price: 35
    },
    {
        brand: "MUSETEX",
        name: "MUSETEX Phantom",
        case_type: "ATX Mid Tower",
        color: "Black",
        power_supply: "None",
        side_panel_window: "Tempered Glass",
        external_bays: 0,
        internal_bays: 3,
        price: 90
    },
    {
        brand: "In Win",
        name: "In Win D-Frame 2.0",
        case_type: "ATX Full Tower",
        color: "Black / Gold",
        power_supply: "1065 W",
        side_panel_window: "Tempered Glass",
        external_bays: 0,
        internal_bays: 4,
        price: 115
    },
    {
        brand: "Rosewill",
        name: "Rosewill FBM-01",
        case_type: "MicroATX Mini Tower",
        color: "Black",
        power_supply: "None",
        side_panel_window: "None",
        external_bays: 2,
        internal_bays: 2,
        price: 23
    },
    {
        brand: "In Win",
        name: "In Win A1 Plus",
        case_type: "Mini ITX Tower",
        color: "Pink",
        power_supply: "650 W",
        side_panel_window: "Tempered Glass",
        external_bays: 0,
        internal_bays: 0,
        price: 200
    }
])

# 10 maticnih ploca
Motherboard.create!([
    {
        brand: "MSI",
        name: "MSI B450 TOMAHAWK MAX",
        socket: "AM4",
        form_factor: "ATX",
        memory_max: 64,
        memory_slots: 4,
        color: "Black",
        price: 125
    },
    {
        brand: "Asus",
        name: "Asus ROG STRIX Z490-E GAMING",
        socket: "LGA1200",
        form_factor: "ATX",
        memory_max: 128,
        memory_slots: 4,
        color: "Black",
        price: 300
    },
    {
        brand: "MSI",
        name: "MSI Z390-A PRO",
        socket: "LGA1151",
        form_factor: "ATX",
        memory_max: 128,
        memory_slots: 4,
        color: "Brown / Black",
        price: 129
    },
    {
        brand: "Gigabyte",
        name: "Gigabyte B450 AORUS M",
        socket: "AM4",
        form_factor: "Micro ATX",
        memory_max: 64,
        memory_slots: 4,
        color: "Black / Gray",
        price: 89
    },
    {
        brand: "Asus",
        name: "Asus PRIME A320M-K",
        socket: "AM4",
        form_factor: "Micro ATX",
        memory_max: 32,
        memory_slots: 2,
        color: "Black / White",
        price: 65
    },
    {
        brand: "Gigabyte",
        name: "Gigabyte B365M DS3H",
        socket: "LGA1151",
        form_factor: "Micro ATX",
        memory_max: 64,
        memory_slots: 4,
        color: "Black",
        price: 70
    },
    {
        brand: "Gigabyte",
        name: "Gigabyte B450 I AORUS PRO WIFI",
        socket: "AM4",
        form_factor: "Mini ITX",
        memory_max: 32,
        memory_slots: 2,
        color: "Black",
        price: 120
    },
    {
        brand: "ASRock",
        name: "ASRock B450M-HDV R4.0",
        socket: "AM4",
        form_factor: "Micro ATX",
        memory_max: 32,
        memory_slots: 2,
        color: "Black / White",
        price: 68
    },
    {
        brand: "Asus",
        name: "Asus Zenith II Extreme",
        socket: "sTRX4",
        form_factor: "EATX",
        memory_max: 256,
        memory_slots: 8,
        color: "Black",
        price: 1820
    },
    {
        brand: "Asus",
        name: "Asus ROG MAXIMUS XII HERO (WI-FI)",
        socket: "LGA1200",
        form_factor: "ATX",
        memory_max: 128,
        memory_slots: 4,
        color: "Black",
        price: 380
    }
])

# 5 napajanja
PowerSupply.create!([
    {
        brand: "Corsair",
        name: "Corsair RM (2019)",
        form_factor: "ATX",
        efficiency_rating: "80+ Gold",
        wattage: 750,
        modular: "Full",
        color: "Black",
        price: 125
    },
    {
        brand: "EVGA",
        name: "EVGA BQ",
        form_factor: "ATX",
        efficiency_rating: "80+ Bronze",
        wattage: 600,
        modular: "Semi",
        color: "Black",
        price: 75
    },
    {
        brand: "Corsair",
        name: "Corsair SF",
        form_factor: "SFX",
        efficiency_rating: "80+ Platinum",
        wattage: 750,
        modular: "Full",
        color: "Black",
        price: 250
    },
    {
        brand: "SeaSonic",
        name: "SeaSonic S12III",
        form_factor: "ATX",
        efficiency_rating: "80+ Bronze",
        wattage: 500,
        modular: "No",
        color: "Black",
        price: 55
    },
    {
        brand: "Thermaltake",
        name: "Thermaltake Smart",
        form_factor: "ATX",
        efficiency_rating: "80+",
        wattage: 500,
        modular: "No",
        color: "Black",
        price: 140
    }
])