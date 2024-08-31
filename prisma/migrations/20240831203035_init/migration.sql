-- CreateTable
CREATE TABLE `User` (
    `user_id` VARCHAR(191) NOT NULL,
    `user_image` VARCHAR(255) NULL,
    `user_role` ENUM('admin', 'manager', 'cashier') NOT NULL DEFAULT 'cashier',
    `user_name` VARCHAR(255) NOT NULL,
    `user_gender` ENUM('male', 'female') NOT NULL,
    `user_username` VARCHAR(50) NOT NULL,
    `user_email` VARCHAR(100) NOT NULL,
    `user_phone` VARCHAR(13) NOT NULL,
    `user_address` VARCHAR(255) NOT NULL,
    `user_birth_date` DATE NOT NULL,
    `user_password` VARCHAR(255) NOT NULL,
    `created_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    UNIQUE INDEX `User_user_username_key`(`user_username`),
    UNIQUE INDEX `User_user_email_key`(`user_email`),
    UNIQUE INDEX `User_user_phone_key`(`user_phone`),
    PRIMARY KEY (`user_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Category` (
    `category_id` VARCHAR(191) NOT NULL,
    `category_name` VARCHAR(255) NOT NULL,
    `created_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    UNIQUE INDEX `Category_category_name_key`(`category_name`),
    PRIMARY KEY (`category_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Product` (
    `product_id` VARCHAR(191) NOT NULL,
    `product_name` VARCHAR(255) NOT NULL,
    `product_price` INTEGER NOT NULL,
    `product_quantity` INTEGER NOT NULL,
    `product_image` VARCHAR(255) NULL,
    `product_desc` VARCHAR(255) NULL,
    `created_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `category_id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`product_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Sale` (
    `sale_id` VARCHAR(191) NOT NULL,
    `sale_date` DATE NOT NULL,
    `sale_total` INTEGER NOT NULL,
    `customer_name` VARCHAR(255) NOT NULL,
    `customer_phone` VARCHAR(13) NOT NULL,
    `created_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `user_id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`sale_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `SaleItem` (
    `sale_item_id` VARCHAR(191) NOT NULL,
    `sale_item_price` INTEGER NOT NULL,
    `sale_item_qty` INTEGER NOT NULL,
    `created_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `sale_id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`sale_item_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Product` ADD CONSTRAINT `Product_category_id_fkey` FOREIGN KEY (`category_id`) REFERENCES `Category`(`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Sale` ADD CONSTRAINT `Sale_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `User`(`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SaleItem` ADD CONSTRAINT `SaleItem_sale_id_fkey` FOREIGN KEY (`sale_id`) REFERENCES `Sale`(`sale_id`) ON DELETE CASCADE ON UPDATE CASCADE;
