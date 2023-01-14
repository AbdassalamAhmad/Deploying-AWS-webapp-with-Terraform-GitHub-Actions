#!flask/bin/python
import json
from flask import Flask, Response, render_template, request
import optparse
from random import randint


application = Flask(__name__)


#winning = randint(1, 3) # Where the car is hiding.

def win_init():
    return randint(1, 3)

winning = win_init()


@application.route("/")
def root():
        return render_template('root.html')

#@application.route('/', methods=['GET'])
#def get():
#    return Response(json.dumps({'Output': 'Hello World'}), mimetype='application/json', status=200)

#@application.route('/', methods=['POST'])
#def post():
#    return Response(json.dumps({'Output': 'Hello World'}), mimetype='application/json', status=200)





@application.route('/select')
def select():
    return render_template('select.html')


@application.route('/select_again', methods=['POST']) 
def select_again():           

    # request.form contains all form parameters, like the selected door
    selected = int(request.form["door"])

    # Open a random door (but not the winning nor the user-chosen door)
    opened = set([1, 2, 3])
    opened.discard(winning)
    opened.discard(selected)
    # opened = random.choice(list(opened)) # if we have multiple choices left
    opened = list(opened)[0] # the only choice left is the one who we will open.

    return render_template("select_again.html", selected=selected, opened=opened)

@application.route('/result', methods=['POST']) 
def result():

    # request.form contains all form parameters, like the selected door
    selected = int(request.form["door"])

    has_won = selected == winning
    
    return render_template("result.html", has_won=has_won, winning=winning)


@application.route('/bot', methods=['GET', 'POST']) 
def bot():
    num_of_tries = 1000
    prize = [None] * num_of_tries
    
    for choice in ['change', 'not_changed']:
        if choice == 'change':
            for i in range (0,num_of_tries):
                gates = [0,0,0]
                gates[randint(0,2)] = 1
    
                bot_pick_gate = randint(0,2)
                #print ("BOT picked gate number: " + str(bot_pick_gate))
                prize[i] = gates[bot_pick_gate]
    
                # host removes zero (one goat) from the gates
                for j in range(0,3):
                    if gates[j]==0:
                        if j == bot_pick_gate:
                            continue
                        else:
                            gates.pop(j)
                            break
    
                # user decide to change his choice so if he was on 1 will be on 0 and vice versa.
                if prize[i] == 1:
                    prize[i] = 0
                else:
                    prize[i] = 1
    
            sum_of_prize_changed = sum(prize)
            Percentage_of_winning_changed = (sum(prize)/num_of_tries)*100
            
            print ("When Bot changed his choice EVERYTIME:")
            print (f"Bot Has Won {sum_of_prize_changed} times of {num_of_tries} tries")
            print (f"Percentage of winning is : {Percentage_of_winning_changed:.2f}")
            print ()
            print ()
            prize = [None] * num_of_tries # to do the calculations one more time for NOT_CHANGED.
    
    
        elif choice == 'not_changed':
            for i in range (0,num_of_tries):
                gates = [0,0,0]
                gates[randint(0,2)] = 1
    
    
                bot_pick_gate = randint(0,2)
                #print ("BOT picked gate number: " + str(bot_pick_gate))
                prize[i] = gates[bot_pick_gate]
        
            sum_of_prize_not_changed = sum(prize)
            Percentage_of_winning_not_changed = (sum(prize)/num_of_tries)*100
            
            print ("When Bot NEVER changed his choice:")
            print (f"Bot Has Won {sum_of_prize_not_changed} times of {num_of_tries} tries")
            print (f"Percentage of winning is : {Percentage_of_winning_not_changed:.2f}")

    return render_template("bot.html", num_of_tries=num_of_tries, sum_of_prize_changed=sum_of_prize_changed, Percentage_of_winning_changed=Percentage_of_winning_changed, sum_of_prize_not_changed=sum_of_prize_not_changed, Percentage_of_winning_not_changed=Percentage_of_winning_not_changed)













if __name__ == "__main__":
   application.run(debug=True, default_port = "80", default_host = "0.0.0.0")

# if __name__ == '__main__':
#     default_port = "80"
#     default_host = "0.0.0.0"
#     parser = optparse.OptionParser()
#     parser.add_option("-H", "--host",
#                       help=f"Hostname of Flask app {default_host}.",
#                       default=default_host)

#     parser.add_option("-P", "--port",
#                       help=f"Port for Flask app {default_port}.",
#                       default=default_port)

#     parser.add_option("-d", "--debug",
#                       action="store_true", dest="debug",
#                       help=optparse.SUPPRESS_HELP)

#     options, _ = parser.parse_args()

#     application.run(
#         debug=options.debug,
#         host=options.host,
#         port=int(options.port)
#     )


