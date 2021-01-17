from subprocess import check_output

def get_pass(account):
    return check_output("lpass show --password {}".format(account), shell=True).splitlines()[0]

def get_user(account):
    return check_output("lpass show --username {}".format(account), shell=True).splitlines()[0]
