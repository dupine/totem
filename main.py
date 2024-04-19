import telebot, pathlib, os, random
from PIL import Image

API_TOKEN = "6693052658:AAHY8dHg8j2lip9tKWD8TmUL47R2WMgN8yg"
bot = telebot.TeleBot(API_TOKEN)
print("bot online")

# __ help __
@bot.message_handler(commands=['aiuto', 'help'])
def help_command(message):
    bot.send_message(message.chat.id, ("Ciao {0}, chat {1}").format(message.from_user.username, message.chat.id))

@bot.message_handler(content_types=['photo'])
def scaricoImmagine(message):

    # prendo l'ultima immagine presente nella lista del server
    file_info = bot.get_file(message.photo[len(message.photo) - 1].file_id)
    downloaded_file = bot.download_file(file_info.file_path)
    x = (file_info.file_path).split("/")
    #with open("immagini/"+x[len(x)-1], 'wb') as new_file:
    with open("immagini/gg.jpeg", 'wb') as new_file:
        new_file.write(downloaded_file)


# random.choice(os.listdir("C:\\")) #change dir name to whatever

bot.infinity_polling()
#only pyTelegramBotAPI & telegram & pip install --upgrade python-telegram-bot
