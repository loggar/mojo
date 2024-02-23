from python import Python


fn use_numpy() raises:
    let np = Python.import_module("numpy")
    let ar = np.arange(15).reshape(3, 5)
    print(ar)
    print(ar.shape)
