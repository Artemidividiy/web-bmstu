echo 'starting the application'

cd armstrong && rails spec &
cd xml_processor && rails spec

    echo $job
    wait $job || echo 'error occured'
done

echo 'process done'
echo 'checkout the input'
