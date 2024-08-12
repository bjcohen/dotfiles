from subprocess import check_output

def get_pass(account):
    return check_output("NODE_OPTIONS='--no-deprecation' bw get password {}".format(account), shell=True).splitlines()[0]

def get_user(account):
    return check_output("NODE_OPTIONS='--no-deprecation' bw get username {}".format(account), shell=True).splitlines()[0]
