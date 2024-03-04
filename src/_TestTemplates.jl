module _TestTemplates

using FileIO

# Simple I/O operation
function fileio_load(f::File{format"TEST"})
    open(FileIO.filename(f), "r") do io
        String(read(io))
    end
end

function fileio_save(f::File{format"TEST"}, text::AbstractString)
    open(FileIO.filename(f), "w") do io
        write(io, text)
    end
end

#function __init__()
#    detect_test(io) = endswith(io.name,".test>")
#    add_format(format"TEST",detect_test,[".test"], [:_TestTemplates])
#end

end # module _TestTemplates
