-- This is just progre.sh rewritten in lua.
-- It's a completely useless progress bar.
-- You could, for example, substitute some of the fields with something else to fool your colleagues who know nothing about Lua.

print("Welcome to this useless progress bar")
os.execute("sleep 0.1")

while true do
    io.write("Are you sure you want to continue? (Y/n) ")
    local user_input = io.read()

    if user_input == "" or user_input:lower() == "y" then
        print("Progress starting")
        break
    elseif user_input:lower() == "n" then
        print("Good choice")
        os.exit()
    else
        print("What???")
        os.execute("sleep 0.2")
    end
end

os.execute("sleep 1")

for i = 0, 100, 5 do
    local formatted_percentage = string.format("%3d%%", i)

    local num_hashes = i / 5
    if i == 100 then
        num_hashes = num_hashes + 1
    end
    local hashes = string.rep("#", num_hashes)

    local num_dots = 20 - num_hashes
    local dots = string.rep(".", num_dots)

    io.write(string.format("[%s] [%s%s]\r", formatted_percentage, hashes, dots))
    io.flush()

    if i == 90 then
        os.execute("sleep 1")
    elseif i == 95 then
        os.execute("sleep 2.5")
    else
        os.execute("sleep 0.5")
    end
end

print("\nProgress complete")
os.execute("sleep 0.2")
print("Congrats, you accomplished nothing.")
os.execute("sleep 0.2")
print("Thank you for wasting your time!")
