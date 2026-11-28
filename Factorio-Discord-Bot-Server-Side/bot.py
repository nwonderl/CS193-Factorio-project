import os
import discord
from dotenv import load_dotenv
from discord.ext import commands

#sets up the intents of the discord bot (what the bot is able to see on discord)
intents = discord.Intents.default()
intents.message_content = True

#initializes the bot with the previous intents
bot = commands.Bot(command_prefix="/", intents=intents)
