import subprocess
import asyncio

while True:
    try:
        import discord
        from dotenv import load_dotenv
        from pydactyl import PterodactylClient
        import pytz
    except ImportError as e:
        if "discord" in str(e):
            print("Module discord is niet gevonden en word nu geinstalleerd")
            asyncio.sleep(5)
            subprocess.run(["pip", "install", "-U", "py-cord[voice]"])
        elif "dotenv" in str(e):
            print("Module python-dotenv has not been found and is installing now")
            asyncio.sleep(5)
            subprocess.run(["pip", "install", "python-dotenv"])
        elif "pydactyl" in str(e):
            print("Module pydactyl has not been found and is installing now")
            asyncio.sleep(5)
            subprocess.run(["pip", "install", "py-dactyl"])
        elif "pytz" in str(e):
            print("Module pytz has not been found and is installing now")
            asyncio.sleep(5)
            subprocess.run(["pip", "install", "pytz"])
        else:
            print(f"Unknown Importerror: {e}")
            break
    else:
        subprocess.run(["python", "bot.py"])
        break
