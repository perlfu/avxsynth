elephant = FFVideoSource(source="/home/encodingtools/Video/ElephantsDream/ElephantsDream-avc.mpg", colorspace="yv12")
elephant = Crop(elephant, 0, 0, 640, 180)
elephant = Trim(elephant, 240, 539)
elephant = Subtitle(elephant, "width = " + String(width(elephant)) + " height = " + String(height(elephant)))
destination = FFVideoSource(source="/home/encodingtools/Video/DestinationTruth/DestinationTruth.mpg", colorspace="yv12")
destination = SWScale(destination, 640, 360, "Lanczos")
destination = Trim(destination, 0, 299)
stackhorizontal(stackvertical(elephant, destination), stackvertical(destination, elephant))