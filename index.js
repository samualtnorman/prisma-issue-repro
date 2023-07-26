import { PrismaClient } from "@prisma/client"

const prisma = new PrismaClient

// typescript doesn't detect type errors
await prisma.user.create({ data: { name: "John Smith" } })
