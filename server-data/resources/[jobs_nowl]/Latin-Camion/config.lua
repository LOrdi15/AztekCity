Config = {
    JobCenter = vector3(931.89, -2267.38, 30.84),
    ReAdd = 120, -- seconds after a job is finished until its shown again
    Job = {
        ['jobRequired'] = true, -- if true: only players with the specified job can work, false everyone can work
        ['jobName'] = 'trucker',
    },
    Jobs = {
        -- {title = 'title', payment = reward, vehicles = {'truck', 'trailer'}, start = {vector3(x, y, z), heading}, trailer = {vector3(x, y, z), heading}, arrive = vector3(x, y, z)}
        {title = 'Paquete para  IKEA', payment = 5000, vehicles = {'phantom', 'trailers'}, start = {vector3(954.77, -2188.86, 29.63), 84.99}, trailer = {vector3(939.0, -1799.2, 30.1), 175.78}, arrive = vector3(2671.0, 3530.35, 51.26)},
        {title = 'Paquete para  24/7', payment = 2500, vehicles = {'packer', 'trailers2'}, start = {vector3(868.77, -2341.7, 29.44), 174.68}, trailer = {vector3(946.29, -2111.86, 29.64), 86.76}, arrive = vector3(103.57, -1819.37, 25.56)}
    },
}

Config.Clothes = {
    male = {
        ['tshirt_1'] = 27,  ['tshirt_2'] = 1,
        ['torso_1'] = 453,   ['torso_2'] = 19,
        ['arms'] = 30,
        ['pants_1'] = 28,   ['pants_2'] = 3,
        ['shoes_1'] = 12,   ['shoes_2'] = 0,
        ['helmet_1'] = 77,  ['helmet_2'] = 9,
    },
    female = {
        ['tshirt_1'] = 112,  ['tshirt_2'] = 0,
        ['torso_1'] = 304,   ['torso_2'] = 0,
        ['arms'] = 9,
        ['pants_1'] = 0,   ['pants_2'] = 10,
        ['shoes_1'] = 54,   ['shoes_2'] = 0,
        ['helmet_1'] = 73,  ['helmet_2'] = 9,
    }
}

Strings = {
    ['not_job'] = "No tienes el trabajo de camionero.!",
    ['somebody_doing'] = 'Alguien ya está haciendo este trabajo, seleccione otro!',
    ['menu_title'] = 'Centro de trabajo / Camionero',
    ['e_browse_jobs'] = 'Presiona ~INPUT_CONTEXT~ para trabajar',
    ['start_job'] = 'Centro De  Camionero',
    ['truck'] = 'Camion',
    ['trailer'] = 'Trailer',
    ['get_to_truck'] = 'Ve hasta  el camion!',
    ['get_to_trailer'] = 'Conduce hasta el trailer y enganchalo!',
    ['destination'] = 'Destino',
    ['get_out'] = 'sal de tu ~y~camion~w~!',
    ['park'] = 'Estacione el trailer en el destino.',
    ['park_truck'] = 'Estacione el  camion en el destino.',
    ['drive_destination'] = 'Conduce hasta el destino.',
    ['reward'] = 'Bien hecho! recibiste ~g~$~w~%s',
    ['paid_damages'] = '¡Conduce mejor la próxima vez! Pagaste ~r~$~w~%s por los DAÑOS!',
    ['drive_back'] = 'Regresa con el camion.', 
    ['detach'] = 'Desmontar el remolque.'
}