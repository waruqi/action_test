-- add_requires("boost", {configs = {all = true}})

add_requires("boost", {configs = {log = true}})
--[[
add_requires("boost", {configs = {
    serialization = true,
    random = true,
    filesystem = true,
    fiber = true,
    test = true,
    program_options = true,
    all = true,
    contract = true,
    regex = true,
    thread = true,
    log = true,
    nowide = true,
    mpi = true,
    pic = true,
    system = true,
    date_time = true,
    exception = true,
    debug = true,
    type_erasure = true,
    chrono = true,
    python = true,
    graph = true,
    wave = true,
    iostreams = true,
    context = true,
    json = true,
    locale = true,
    multi = true,
    math = true,
    timer = true,
    container = true,
    graph_parallel = true,
    stacktrace = true,
    coroutine = true,
    atomic = true,
    shared = true
    }})
]]
-- add_requires("cmake::Boost", {system = true, configs = {components = {"log", "system","filesystem","regex"}}})

target("test")
    set_kind("binary")
    set_languages("c++17")
    add_files("main.cpp") 
    add_packages("boost")


    after_build(function (target)
        print("target name: %s", target:name())
        os.exec("echo %s", target:targetfile())
    end)
