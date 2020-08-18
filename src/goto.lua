i = 0

-- 不知道为啥 我这里不支持::

::s1:: do
    print(i)
    i = i+1
end
if i>3 then
    os.exit()
end
goto s1
