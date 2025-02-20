/*
  Warnings:

  - Changed the type of `consumptionMethd` on the `Order` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- CreateEnum
CREATE TYPE "ConsumptionMethod" AS ENUM ('TAKEAWAY', 'DINE_IN');

-- AlterTable
ALTER TABLE "Order" DROP COLUMN "consumptionMethd",
ADD COLUMN     "consumptionMethd" "ConsumptionMethod" NOT NULL;

-- DropEnum
DROP TYPE "ConsumptionMethd";
