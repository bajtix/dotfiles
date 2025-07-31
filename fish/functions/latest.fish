function latest
    ls -t1 --time=ctime | head -n1
end
