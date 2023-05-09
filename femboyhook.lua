

local MenuSelection = gui.add_combo("menu selection", "lua>tab b", {"main", "rage", "antiaim", "visual", "misc", "custom"})
local name =  gui.add_textbox("user", "LUA>TAB B")

-- ragebot

local jittertoggle = gui.get_config_item("rage>anti-aim>angles>jitter")
local jitterrange = gui.get_config_item("rage>anti-aim>angles>jitter range")
local faketoggle = gui.get_config_item("rage>anti-aim>desync>fake")
local fakeamount = gui.get_config_item("rage>anti-aim>desync>fake amount")
local compangle = gui.get_config_item("rage>anti-aim>desync>compensate angle")
local fsfake = gui.get_config_item("rage>anti-aim>desync>freestand fake")
local fakejitter = gui.get_config_item("rage>anti-aim>desync>flip fake with jitter")
local slide = gui.get_config_item("misc>movement>slide")

local fake_amount = gui.get_config_item("Rage>Anti-Aim>Desync>Fake amount")
local resolver_reference = gui.get_config_item("Rage>Aimbot>Aimbot>Resolver mode")
local dsbfk = gui.add_checkbox("disable fakelag on HS", "lua>tab b")
local rollsolver = gui.add_checkbox("roll resolver on key", "lua>tab b")
gui.add_keybind("lua>tab b>roll resolver on key")
local logs = gui.add_checkbox("hit logs", "lua>tab b")

-- visuals

local watermarkd = gui.add_checkbox("watermark", "lua>tab b")
local infobar = gui.add_checkbox("info tab", "lua>tab b")
local arrowsn = gui.add_checkbox("arrows", "lua>tab b")
local keybinds = gui.add_checkbox("keybinds", "lua>tab b")
local indicatorsmain = gui.add_checkbox("indicators", "lua>tab b")
local indicatorstype = gui.add_combo("indicators | type", "lua>tab b", {"simple", "cool"})
local infotabflag = gui.add_combo("info tab | flag", "lua>tab b", {"Russia", "Germany", "Estonia", "Hungary", "Reichsflagge", "Ukraine", "Belarus"})

-- others

local trashtalk = gui.add_checkbox("trash talk", "lua>tab b")
local clantag = gui.add_checkbox("clantag", "lua>tab b")
local clantagtype = gui.add_combo("clantag | type", "lua>tab b", {"default", "fatality"})
local aspectratiobutton = gui.add_checkbox("aspect ratio", "lua>tab b")
local aspect_ratio_slider = gui.add_slider("[value]", "lua>tab b", 1, 200, 1)

-- aa addons
local Checkbox = gui.add_checkbox("clock inverter", "lua>tab b")
local keybind = gui.add_keybind("lua>tab b>clock inverter")

-- colors

local watermark_bcolor = gui.add_checkbox("watermark color", "lua>tab b")
local watermark_color = gui.add_colorpicker("lua>tab b>watermark color", true)
local keybinds_bcolor = gui.add_checkbox("keybinds color", "lua>tab b")
local keybinds_color = gui.add_colorpicker("lua>tab b>keybinds color", true)
local infobar_bcolor = gui.add_checkbox("infobar color", "lua>tab b")
local infobar_color = gui.add_colorpicker("lua>tab b>infobar color", true)
local indicator_bcolor = gui.add_checkbox("indicator color", "lua>tab b")
local indicator_color = gui.add_colorpicker("lua>tab b>indicator color", true)

local WorkAA = gui.add_checkbox("antiaim builder", "lua>tab b")

local States = gui.add_combo("choose antiaim condition:", "lua>tab b", {"[none]", "[standing]", "[moving]","[slow walking]","[crouching]","[in air]"})


local standing_jittertoggle = gui.add_checkbox("[standing] jitter", "lua>tab b")
local standing_jitterrange = gui.add_slider("[standing] jitter range", "lua>tab b", 0, 360, 0)
local standing_faketoggle = gui.add_checkbox("[standing] fake", "lua>tab b")
local standing_fakeamount = gui.add_slider("[standing] fake Amount", "lua>tab b", 0, 100, 0)
local standing_compangle = gui.add_slider("[standing] compensate angle", "lua>tab b", 0, 100, 0)
local standing_fakejitter= gui.add_checkbox("[standing] jitter fake", "lua>tab b")

local moving_jittertoggle = gui.add_checkbox("[moving] jitter", "lua>tab b")
local moving_jitterrange = gui.add_slider("[moving] jitter range", "lua>tab b", 0, 360, 0)
local moving_faketoggle = gui.add_checkbox("[moving] fake", "lua>tab b")
local moving_fakeamount = gui.add_slider("[moving] fake amount", "lua>tab b", 0, 100, 0)
local moving_compangle = gui.add_slider("[moving] compensate angle", "lua>tab b", 0, 100, 0)
local moving_fakejitter= gui.add_checkbox("[moving] jitter fake", "lua>tab b")

local slowwalk_jittertoggle = gui.add_checkbox("[slow walking] jitter", "lua>tab b")
local slowwalk_jitterrange = gui.add_slider("[slow walking] jitter range", "lua>tab b", 0, 360, 0)
local slowwalk_faketoggle = gui.add_checkbox("[slow walking] fake", "lua>tab b")
local slowwalk_fakeamount = gui.add_slider("[slow walking] fake Amount", "lua>tab b", 0, 100, 0)
local slowwalk_compangle = gui.add_slider("[slow Walking] compensate Angle", "lua>tab b", 0, 100, 0)
local slowwalk_fakejitter= gui.add_checkbox("[slow Walking] jitter Fake", "lua>tab b")


local crouching_jittertoggle = gui.add_checkbox("[crouching] jitter", "lua>tab b")
local crouching_jitterrange = gui.add_slider("[crouching] jitter range", "lua>tab b", 0, 360, 0)
local crouching_faketoggle = gui.add_checkbox("[crouching] fake", "lua>tab b")
local crouching_fakeamount = gui.add_slider("[crouching] fake amount", "lua>tab b", 0, 100, 0)
local crouching_compangle = gui.add_slider("[crouching] compensate angle", "lua>tab b", 0, 100, 0)
local crouching_fakejitter= gui.add_checkbox("[crouching] jitter fake", "lua>tab b")

local air_jittertoggle = gui.add_checkbox("[in air] jitter", "lua>tab b")
local air_jitterrange = gui.add_slider("[in air] jitter range", "lua>tab b", 0, 360, 0)
local air_faketoggle = gui.add_checkbox("[in air] fake", "lua>tab b")
local air_fakeamount = gui.add_slider("[in air] fake Amount", "lua>tab b", 0, 100, 0)
local air_compangle = gui.add_slider("[in air] compensate Angle", "lua>tab b", 0, 100, 0)
local air_fakejitter= gui.add_checkbox("[in air] jitter fake", "lua>tab b")

-- data
local nextfont = render.create_font("calibri.ttf", 23, render.font_flag_shadow)
local nextfont2 = render.create_font("calibri.ttf", 13, render.font_flag_shadow)
local nextfont3 = render.create_font("calibrib.ttf", 23, render.font_flag_shadow)
local fontdmg = render.create_font("verdana.ttf", 13, render.font_flag_shadow)
local pixel = render.font_esp
local calibri11 = render.create_font("calibri.ttf", 11, render.font_flag_outline)
local calibri13 = render.create_font("calibri.ttf", 13, render.font_flag_shadow)
local verdana = render.create_font("verdana.ttf", 13, render.font_flag_outline)
local tahoma = render.create_font("tahoma.ttf", 13, render.font_flag_shadow)
local verdana2 = render.create_font("verdana.ttf", 12, 0)
local logo = render.create_font("verdana.ttf", 45, render.font_flag_outline)

-- vars

local x, y = render.get_screen_size()
local hs = gui.get_config_item("Rage>Aimbot>Aimbot>Hide shot")
local limit = gui.get_config_item("Rage>Anti-Aim>Fakelag>Limit")
local cache = {
    backup = limit:get_int(),
    override = false,
}

-- trashtalk 
local first = {
    '1 by femboyhook',
    'хуила, пора гетать кфг: select-place.ru/item.php?id=23034',
    'эуу ежжи баля я тваей мамы сиску царапал',
    'nyaaaaa :3',
    'антиаимы у витмы купил?',
    'меф ск гаш (по самаре) - @imaginationabuser',
    '1 by ИП Захаров Виктор Сергеевич',
    'дон лимон',
    '1 by бог карманного бильярда',
    'сочно упал, помочь встать?',
    'OwOned by femboyhook',
    'операция отклонена',
    'давай делитай свою пасту и вгетай фембойхук',
    'почему промисал? а, ты же не гетнул фембойхук',
    '1х1 рн? у тебя твоя пастнутая луашка крашнет когда лоаднешься',
    'наивный на чит надеется',
    'аашки твой пасты не бустят, доброе утро',
    'H$',
    'мисс в аллаха',
    'это в хуй',
    'мррр мяуууу :3333',
    'дырявая башка',
    'нищий улетел',
    'матье бал',
    'изи нищий',
    'хуйпачосик хуйпачос хуйпачосина',
    'улетаешь на мальдивы',
    'nigger get tapped',
    'why so easy',
    'пиздуй в стандофф',
    'играю кв за вас 100 рублей',
    'wake up',
    'обидно да школьник',
    'опять даблкап пролил на клаву',
    'как же сочно отлетел',
    'что ты делаешь ебала',
    'чота изи',
    'ищи себя на иконе в клубе православия',
    'давай оправдайся',
    'time to rq',
    'иногда в голову приходят интересные вещи от femboyhook.lua',
    'съеби в страхе (◣_◢)',

}
local old_time = 0;
local animation = { --change the text to whatever you want for your clantag

    "f",
    "fe",
    "fem",
    "femb",
    "fembo",
    "femboy",
    "femboyh",
    "femboyho",
    "femboyhoo",
    "femboyhook",
    "f3mb0yh00k",
    "femboyhook",
    "f3mb0yh00k",
    "femboyhook",
    "f3mb0yh00k",
    "femboyhook",
    "femboyhoo",
    "femboyho",
    "femboyh",
    "femboy",
    "fembo",
    "femb",
    "fem",
    "fe",
    "f",
}
local anim_2 = {
   
    "stay fatal",
    "stay fata",
    "stay fat",
    "stay fa",
    "stay f",
    "stay fe",
    "stay fem",
    "stay femb",
    "stay fembo",
    "stay femboy",
    "stay fembo",
    "stay femb",
    "stay fem",
    "stay fe",
    "stay f",
    "stay fa",
    "stay fat",
    "stay fata",
    "stay fatal",
}
local function get_muzzle_pos()
    local lp = entities.get_entity(engine.get_local_player())
    if not lp or not lp:is_alive() then return end
    local lp_address = get_client_entity(engine.get_local_player())
    local weapon = lp:get_weapon()
    if not weapon then return end
    local weapon_address = get_client_entity(weapon:get_index())
    local viewmodel_handle = lp:get_prop("m_hViewModel[0]")
    local viewmodel = entities.get_entity_from_handle(viewmodel_handle)
    local viewmodel_address = get_client_entity(viewmodel:get_index())
    local viewmodel_vtbl = ffi.cast(interface_type, viewmodel_address)[0]
    local weapon_vtbl = ffi.cast(interface_type, weapon_address)[0]
    local get_viewmodel_attachment_fn = ffi.cast("c_entity_get_attachment_t", viewmodel_vtbl[84])
    local get_muzzle_attachment_index_fn = ffi.cast("c_weapon_get_muzzle_attachment_index_first_person_t", weapon_vtbl[468])
    local vec3 = ffi.new("Vector")
    local muzzle_attachment_index = get_muzzle_attachment_index_fn(weapon_address, viewmodel_address)
    local state = get_viewmodel_attachment_fn(viewmodel_address, muzzle_attachment_index, vec3)
    local vec3_pos = math.vec3(vec3.x, vec3.y, vec3.z)
    return vec3_pos
end
local Find = gui.get_config_item
local side = false
switch_held = false
local yawaddamount = Find("Rage>Anti-Aim>Angles>Add");
local yawadd = Find("Rage>Anti-Aim>Angles>Yaw add");
function gui_system()

    currenttab = MenuSelection:get_int()



        

    if currenttab == 2  then
        AntiAim = true

        if WorkAA:get_bool() then
            AAON = true
            if States:get_int() == 1 then
                CS = true
            else
                CS = false
            end
            if States:get_int() == 2 then
                CM = true
            else
                CM = false
            end
            if States:get_int() == 3 then
                CSW = true
            else
                CSW = false
            end
            if States:get_int() == 4 then
                CC = true
            else
                CC = false
            end
            if States:get_int() == 5 then
                CA = true
            else
                CA = false
            end
        else
            AAON = false
            CS = false
            CM = false
            CSW = false
            CC = false
            CA = false
        end
    else
        AAON = false
        CS = false
        CM = false
        CSW = false
        CC = false
        CA = false
        AntiAim = false

    end


    if not gui.is_menu_open() then
        AntiAim = false
        AAON = false
        CS = false
        CM = false
        CSW = false
        CC = false
        CA = false
    end
    gui.set_visible("lua>tab b>antiaim builder", AntiAim)
    gui.set_visible("lua>tab b>choose antiaim condition:", AAON)
    gui.set_visible("lua>tab b>[standing] jitter", CS)
    gui.set_visible("lua>tab b>[standing] jitter range", CS)
    gui.set_visible("lua>tab b>[standing] fake", CS)
    gui.set_visible("lua>tab b>[standing] fake amount", CS)
    gui.set_visible("lua>tab b>[standing] compensate angle", CS)
    gui.set_visible("lua>tab b>[standing] jitter fake", CS)
    gui.set_visible("lua>tab b>[moving] jitter", CM)
    gui.set_visible("lua>tab b>[moving] jitter range", CM)
    gui.set_visible("lua>tab b>[moving] fake", CM)
    gui.set_visible("lua>tab b>[moving] fake amount", CM)
    gui.set_visible("lua>tab b>[moving] compensate angle", CM)
    gui.set_visible("lua>tab b>[moving] jitter fake", CM)
    gui.set_visible("lua>tab b>[slow Walking] jitter", CSW)
    gui.set_visible("lua>tab b>[slow Walking] jitter range", CSW)
    gui.set_visible("lua>tab b>[slow Walking] fake", CSW)
    gui.set_visible("lua>tab b>[slow Walking] fake amount", CSW)
    gui.set_visible("lua>tab b>[slow Walking] compensate angle", CSW)
    gui.set_visible("lua>tab b>[slow Walking] jitter fake", CSW)
    gui.set_visible("lua>tab b>[crouching] jitter", CC)
    gui.set_visible("lua>tab b>[crouching] jitter range", CC)
    gui.set_visible("lua>tab b>[crouching] fake", CC)
    gui.set_visible("lua>tab b>[crouching] fake amount", CC)
    gui.set_visible("lua>tab b>[crouching] compensate angle", CC)
    gui.set_visible("lua>tab b>[crouching] jitter fake", CC)
    gui.set_visible("lua>tab b>[in air] jitter", CA)
    gui.set_visible("lua>tab b>[in air] jitter range", CA)
    gui.set_visible("lua>tab b>[in air] fake", CA)
    gui.set_visible("lua>tab b>[in air] fake amount", CA)
    gui.set_visible("lua>tab b>[in air] compensate angle", CA)
    gui.set_visible("lua>tab b>[in air] jitter fake", CA)
end


function guiscc()
    local tab = MenuSelection:get_int()
    local indicatorsenb = indicatorsmain:get_bool()
    local infobar = infobar:get_bool()
    local aspectratiobuttonx = aspectratiobutton:get_bool()
    -- ragebot
    gui.set_visible("lua>tab b>disable fakelag on HS", tab == 1)
    gui.set_visible("lua>tab b>roll resolver on key", tab == 1)
    gui.set_visible("lua>tab b>hit logs", tab == 1)
    -- aa addons
    gui.set_visible("lua>tab b>clock inverter", tab == 2)

    -- visuals
    gui.set_visible("lua>tab b>Watermark", tab == 3)
    gui.set_visible("lua>tab b>info tab", tab == 3)
    gui.set_visible("lua>tab b>keybinds", tab == 3)
    gui.set_visible("lua>tab b>indicators", tab == 3)
    gui.set_visible("lua>tab b>arrows", tab == 3)
    gui.set_visible("lua>tab b>indicators | type", tab == 3 and indicatorsenb)
    gui.set_visible("lua>tab b>info tab | flag", tab == 3 and infobar)

    -- home
    gui.set_visible("lua>tab b>user", tab == 0)

    -- others
    gui.set_visible("lua>tab b>trash talk", tab == 4)
    gui.set_visible("lua>tab b>clantag", tab == 4)
    gui.set_visible("lua>tab b>clantag | type", tab == 4 and clantag:get_bool())
    gui.set_visible("lua>tab b>aspect ratio", tab == 4)
    gui.set_visible("lua>tab b>[value]", tab == 4 and aspectratiobuttonx)

    -- colours
    gui.set_visible("lua>tab b>keybinds color", tab == 5)
    gui.set_visible("lua>tab b>infobar color", tab == 5)
    gui.set_visible("lua>tab b>watermark color", tab == 5)
    gui.set_visible("lua>tab b>indicator color", tab == 5)
end

function clantagfc()
    local ctype = clantagtype:get_int()
    if clantag:get_bool() then
        local defaultct = gui.get_config_item("misc>various>clan tag")
        local realtime = math.floor((global_vars.realtime) * 1.5)
        if old_time ~= realtime then
            if ctype == 0 then
                utils.set_clan_tag(animation[realtime % #animation+1]);
            end
            if ctype == 1 then
                utils.set_clan_tag(anim_2[realtime % #anim_2+1]);
            end
        old_time = realtime;
        defaultct:set_bool(false);
        end
    end
end

function on_player_death(event)
    if trashtalk:get_bool() then
    local lp = engine.get_local_player();
    local attacker = engine.get_player_for_user_id(event:get_int('attacker'));
    local userid = engine.get_player_for_user_id(event:get_int('userid'));
    local userInfo = engine.get_player_info(userid);
        if attacker == lp and userid ~= lp then
            engine.exec("say " .. first[utils.random_int(1, #first)] .. "")
        end
    else
    end
end


function clock_inverter()
    if engine.is_in_game() == false then return
    end

    if Checkbox:get_bool() == true then
        fake_amount:set_int(-fake_amount:get_int())
    else
        fake_amount:set_int(fake_amount:get_int())
    end
end

function fakelagrgb()
    if dsbfk:get_bool() then
        if hs:get_bool() then
            limit:set_int(1)
        end
        cache.override = true
        else
        if cache.override then
            limit:set_int(cache.backup)
            cache.override = false
        else
            cache.backup = limit:get_int()
        end
    end
end

function gui_controller()
    local text =  "femboyhook aa"
    local username = name:get_string()
    local textx, texty = render.get_text_size(pixel, text)
    local text2 = "user: " .. username .. ""
    local text2x, text2y = render.get_text_size(pixel, text2)
    local infotabflag = infotabflag:get_int()
    local alpha2 = math.floor(math.abs(math.sin(global_vars.realtime) * 2) * 255)
    if infobar:get_bool() then
        render.rect_filled_multicolor(5, y / 2, 80, (y / 2) + 19,infobar_color:get_color(), render.color(0,0,0,0),render.color(0,0,0,0), infobar_color:get_color())
        render.text(pixel, 37,(y / 2) + 2, "femboyhook aa", render.color(255,255,255,255))
        render.text(pixel, 37 + textx,(y / 2) + 1, " innovations", infobar_color:get_color())
        render.text(pixel, 37,(y / 2) + 10, "user: " .. username .. "", render.color(255,255,255,255))
        render.text(pixel, 37 + text2x,(y / 2) + 10, " [alpha]", render.color(infobar_color:get_color().r, infobar_color:get_color().g, infobar_color:get_color().b, alpha2))
        if infotabflag == 0 then
            render.rect_filled(7, (y / 2) + 2, 32, (y / 2) + 7,render.color(255,255,255,255))
            render.rect_filled(7, (y / 2) + 7, 32, (y / 2) + 12,render.color(28, 53, 120,255))
            render.rect_filled(7, (y / 2) + 12, 32, (y / 2) + 17,render.color(2228, 24, 28,255))
        end
        if infotabflag == 1 then
            render.rect_filled(7, (y / 2) + 2, 32, (y / 2) + 7,render.color(0, 0, 0, 255))
            render.rect_filled(7, (y / 2) + 7, 32, (y / 2) + 12,render.color(221, 0, 0,255))
            render.rect_filled(7, (y / 2) + 12, 32, (y / 2) + 17,render.color(255, 204, 0,255))
        end
        if infotabflag == 2 then
            render.rect_filled(7, (y / 2) + 2, 32, (y / 2) + 7,render.color(0, 114, 206, 255))
            render.rect_filled(7, (y / 2) + 7, 32, (y / 2) + 12,render.color(0,0,0,255))
            render.rect_filled(7, (y / 2) + 12, 32, (y / 2) + 17,render.color(255,255,255,255))
        end
        if infotabflag == 3 then
            render.rect_filled(7, (y / 2) + 2, 32, (y / 2) + 7,render.color(206, 41, 57, 255))
            render.rect_filled(7, (y / 2) + 7, 32, (y / 2) + 12,render.color(255, 255, 255,255))
            render.rect_filled(7, (y / 2) + 12, 32, (y / 2) + 17,render.color(71, 112, 80,255))
        end
        if infotabflag == 4 then
            
            render.rect_filled(7, (y / 2) + 2, 32, (y / 2) + 7,render.color(0, 0,0,255))
           render.rect_filled(7, (y / 2) + 7, 32, (y / 2) + 12,render.color(255,255,255,255))
          render.rect_filled(7, (y / 2) + 12, 32, (y / 2) + 17,render.color(255, 17, 0,255))
        end
        if infotabflag == 5 then
            
            render.rect_filled(7, (y / 2) + 2, 32, (y / 2) + 12,render.color("#2800ff"))
            render.rect_filled(7, (y / 2) + 10, 32, (y / 2) + 17,render.color("#f8ff00"))
        end
        if infotabflag == 6 then
            render.rect_filled(7, (y / 2) + 2, 32, (y / 2) + 12,render.color("#ff0000"))
            render.rect_filled(7, (y / 2) + 10, 32, (y / 2) + 17,render.color("#8fce00"))
        end
    end
end

local r_aspectratio = cvar.r_aspectratio

local default_value = r_aspectratio:get_float()

local function set_aspect_ratio(multiplier)
    local screen_width,screen_height = render.get_screen_size()

    local value = (screen_width * multiplier) / screen_height

    if multiplier == 1 then
        value = 0
    end
    r_aspectratio:set_float(value)
end

function aspect_ratio2()
    local aspect_ratio = aspect_ratio_slider:get_int() * 0.01
    aspect_ratio = 2 - aspect_ratio
    set_aspect_ratio(aspect_ratio)
end

function watermark()
    local textone = "femboyhook"
    if watermarkd:get_bool() or player==nil then
        local x, y=render.get_screen_size()
        local player=entities.get_entity(engine.get_local_player())
        local text="femboyhook | ALPHA | build: 25.03.23"
        local textx, texty=render.get_text_size(font, text)
        render.rect_filled_rounded(x-12,8, x-textx-18, 25, render.color(watermark_color:get_color().r, watermark_color:get_color().g, watermark_color:get_color().b, 50), 1.5, render.all)
        render.text(font, x-textx-14,13, text, render.color(255,255, 255, 255))
    end
end

function arrowsd()
    if arrowsn:get_bool() then
        render.text(render.font_esp, (1920 / 2) + 75, 535, ">", render.color(255,255,255,255))
        render.text(render.font_esp, (1920 / 2) - 75, 535, "<", render.color(255,255,255,255))
    end
end






font = render.font_esp

local function animation(check, name, value, speed)
    if check then
        return name + (value - name) * global_vars.frametime * speed / 1.5
    else
        return name - (value + name) * global_vars.frametime * speed / 1.5

    end
end

local offset_scope = 0
local dton = 0
local alpha = 0

function indicators()

    local lp = entities.get_entity(engine.get_local_player())
    if not lp then return end
    if not lp:is_alive() then return end
    local scoped = lp:get_prop("m_bIsScoped")
    offset_scope = animation(scoped, offset_scope, 25, 10)

    local function Clamp(Value, Min, Max)
        return Value < Min and Min or (Value > Max and Max or Value)
    end

        local alpha2 = math.floor(math.abs(math.sin(global_vars.realtime) * 2) * 255)
        local lp = entities.get_entity(engine.get_local_player())
        if not lp then return end
        if not lp:is_alive() then return end
        local screen_width, screen_height = render.get_screen_size( )
        local x = screen_width / 2
        local y = screen_height / 2
        local ay = 0


    if indicatorsmain:get_bool() and indicatorstype:get_int() == 0 then

        local alpha2 = math.floor(math.abs(math.sin(global_vars.realtime) * 2) * 255)
        local lp = entities.get_entity(engine.get_local_player())
        if not lp then return end
        if not lp:is_alive() then return end
        local local_player = entities.get_entity(engine.get_local_player())
        local ay = 0
        local desync_percentage = Clamp(math.abs(local_player:get_prop("m_flPoseParameter", 11) * 120 - 60.5), 0.5 / 60, 60) / 56
        local w, h = 35, 3
        local screen_width, screen_height = render.get_screen_size( )
        local x = screen_width / 2
        local y = screen_height / 2
        local textx , texty = render.get_text_size(font, "femboyhook")
        local color1 = render.color(indicator_color:get_color().r, indicator_color:get_color().g, indicator_color:get_color().b, 255)
        local color2 = render.color(indicator_color:get_color().r - 70, indicator_color:get_color().g - 90, indicator_color:get_color().b - 70, 185)

        local text =  "femboyhook"
        local text2 = "alpha"
        local textx, texty = render.get_text_size(pixel, text)
        local textx2, texty2 = render.get_text_size(pixel, text2)

        render.text(font, x+offset_scope + 7 , y + 15 + texty, "femboyhook", render.color("#FFFFFF"))
        local textx , texty = render.get_text_size(font, utils.random_int(15, 100).."%")
        render.text(font, x+offset_scope + 16 , y + 25 + texty, utils.random_int(15, 100).."%", render.color("#FFFFFF"))
        local dt = gui.get_config_item("Rage>Aimbot>Aimbot>Double tap"):get_bool()
        local dmg = gui.get_config_item("rage>aimbot>ssg08>scout>override"):get_bool()
        if dt then
            dton = 10
        elseif not dt then
            dton = 0
        end
        if dt then
            local textx , texty = render.get_text_size(font, "DT")
            render.text(font, x+ offset_scope - textx + 27  , y + 35 + texty, "DT", render.color("#A1FF97"))
        end
        if not dmg then
            local textx , texty = render.get_text_size(font, "DMG")
            render.text(font, x+ offset_scope - textx + 32  , y + 35 + texty + dton, "DMG", render.color(255,255,255,150))
        elseif dmg then

            local textx , texty = render.get_text_size(font, "DMG")
            render.text(font, x+ offset_scope - textx + 32  , y + 35 + texty + dton, "DMG", render.color(255,255,255,255))
        end
        local hs = gui.get_config_item("Rage>Aimbot>Aimbot>Hide shot"):get_bool()
        if not hs then
            local textx , texty = render.get_text_size(font, "HS")
            render.text(font, x+ offset_scope - textx + 44  , y + 35 + texty + dton, "HS", render.color(255,255,255,150))
        elseif hs then

            local textx , texty = render.get_text_size(font, "HS")
            render.text(font, x+ offset_scope - textx + 44 , y + 35 + texty + dton, "HS", render.color(255,255,255,255))
        end
        local dormant = gui.get_config_item("Rage>Aimbot>Aimbot>target dormant"):get_bool()
        if not dormant then
            local textx , texty = render.get_text_size(font, "DA")
            render.text(font, x+ offset_scope - textx + 14  , y + 35 + texty + dton, "DA", render.color(255,255,255,150))
        elseif dormant then

            local textx , texty = render.get_text_size(font, "DA")
            render.text(font, x+ offset_scope - textx + 14 , y+ 35 + texty + dton, "DA", render.color(255,255,255,255))
        end
    end
end
local doubletap = gui.get_config_item("rage>aimbot>Aimbot>Double Tap")
local daimbot = gui.get_config_item("rage>aimbot>Aimbot>Target dormant")
local onshot = gui.get_config_item("rage>aimbot>Aimbot>Hide shot")
local slide = gui.get_config_item("misc>movement>slide")
local peekassist = gui.get_config_item("misc>movement>Peek Assist")

local fd = gui.get_config_item("misc>movement>Fake Duck")
function ID()

    local lp = entities.get_entity(engine.get_local_player())
    if not lp then return end
    if not lp:is_alive() then return end
    local scoped = lp:get_prop("m_bIsScoped")
    offset_scope = animation(scoped, offset_scope, 25, 10)


        local alpha2 = math.floor(math.abs(math.sin(global_vars.realtime) * 2) * 255)
        local lp = entities.get_entity(engine.get_local_player())
        if not lp then return end
        if not lp:is_alive() then return end
        local screen_width, screen_height = render.get_screen_size( )
        local x = screen_width / 2
        local y = screen_height / 2
        local ay = 0


    if indicatorsmain:get_bool() and indicatorstype:get_int() == 1 then
        local onshot_ind = 0
        local dton1 = 0
    if doubletap:get_bool() then 
        dton1 = 7
    elseif not doubletap:get_bool() then
        dton1 = 0
    end
    if onshot:get_bool() then
        onshot_ind = 7
    elseif not onshot:get_bool() then
        onshot_ind = 0;
    end
        local ideal = peekassist:get_bool()
        local alpha2 = math.floor(math.abs(math.sin(global_vars.realtime) * 1) * 255)
        local alpha3 = math.floor(math.abs(math.sin(global_vars.realtime) * 0.5) * 255)
        local lp = entities.get_entity(engine.get_local_player())
        if not lp then return end
        if not lp:is_alive() then return end
        local local_player = entities.get_entity(engine.get_local_player())
        local ay = 0
        local w, h = 35, 3
        local screen_width, screen_height = render.get_screen_size( )
        local x = screen_width / 2
        local y = screen_height / 2
        local color1 = render.color(indicator_color:get_color().r, indicator_color:get_color().g, indicator_color:get_color().b, 255)
        local color2 = render.color(indicator_color:get_color().r - 70, indicator_color:get_color().g - 90, indicator_color:get_color().b - 70, 185)
        local slowwalk1 = slide:get_bool()
        local fake_duck = fd:get_bool()
        local flag1 = lp:get_prop("m_fFlags")
        local air1 = lp:get_prop("m_hGroundEntity") == -1
        local velocity_x1 = math.floor(lp:get_prop("m_vecVelocity[0]"))
        local velocity_y1 = math.floor(lp:get_prop("m_vecVelocity[1]"))
        local speed1 = math.sqrt(velocity_x1 ^ 2 + velocity_y1 ^ 2)
        local crouch1 = input.is_key_down(17)

        local text =  "FBHOOK"
        local text2 = "alpha"
        local slowwalk_ind = "-SLOWWALKING-"
        local air_ind = "-AIR-"
        local move_ind = "-MOVING-"
        local stand_ind = "-STANDING-"
        local crouch_ind = "-CROUCH-"
        local crouchfk_ind = "-FAKE CROUCH-"
        local textdtfd = "DT(Fake duck)"
        local textdt = "DT Ready"
        local textda = "DORMANT"
        local texths = "ONSHOT"
        local textideal = "IDEAL TICK READY"
        local textx, texty = render.get_text_size(pixel, text)
        local textx2, texty2 = render.get_text_size(pixel, text2)

        render.text(pixel, x+offset_scope - 0, y + 16, text, render.color(255,255,255, 255))
        render.text(pixel, x+offset_scope + 33, y + 16, text2, render.color(indicator_color:get_color().r, indicator_color:get_color().g, indicator_color:get_color().b, 255))
        if speed1 > 2 and not air1 and not crouch1 and not slowwalk1 and not fake_duck then 
        render.text(pixel, x+offset_scope + 7, y + 23 + dton1, move_ind, render.color(255,255,255, 255))
        end
        if speed1 <= 2 and flag1 == 257 and not slowwalk1 and not fake_duck then
            render.text(pixel, x+offset_scope + 5, y + 23 + dton1, stand_ind, render.color(255,255,255, 255))
        end
        if crouch1  then
            render.text(pixel, x+offset_scope + 5, y + 23 + dton1, crouch_ind, render.color(255,255,255, 255))
        end
        if fake_duck then
        render.text(pixel, x+offset_scope + 1, y + 23 + dton1, crouchfk_ind, render.color(255,255,255, 255))
        end
        if air1 and not fake_duck and flag1 ~= 262 then
            render.text(pixel, x+offset_scope + 15, y + 23 + dton1, air_ind, render.color(255,255,255, 255))
        end
        if slowwalk1 and not fake_duck and not air1 and flag1 ~= 263 then
            render.text(pixel, x+offset_scope - 2, y + 23 + dton1, slowwalk_ind, render.color(255,255,255, 255))
        end
        if  fake_duck and flag1 == 262 then 
            render.text(pixel, x+offset_scope + 5, y + 23 + dton1, crouch_ind, render.color(255,255,255, 255))
        end
        if doubletap:get_bool() then
            if ideal then 
                render.text(pixel, x+offset_scope + 9, y + 23, textideal, render.color(255, 255, 255, 255))
            else
                render.text(pixel, x+offset_scope + 9, y + 23, textdt, render.color(255, 255, 255, 255))
        end
        end
        if daimbot:get_bool() then
        render.text(pixel, x+offset_scope + 9, y + 23 + dton1 + 7 + onshot_ind, textda, render.color(188, 188, 188, alpha2))
        end
        if onshot:get_bool() then 
        render.text(pixel, x+offset_scope + 9, y + 23 + dton1 + 7, texths, render.color(255,255,255, 255))
        
        end
        --render.rect_filled(x + 0 +offset_scope, y + 24, x+offset_scope + w + 9, y + 25 + h + 1, render.color("#000000"))
       -- render.rect_filled(x+offset_scope + 1, y + 25, x+offset_scope + w + 8, y + 25 + h, render.color(255, 255, 255, 255))

    end
    end

-- screen size
local screen_size = {render.get_screen_size()}

-- fonts
local verdana = render.font_esp

-- menu
local keybinds_x = gui.add_slider("keybinds_x", "lua>tab a", 0, screen_size[1], 1)
local keybinds_y = gui.add_slider("keybinds_y", "lua>tab a", 0, screen_size[2], 1)
gui.set_visible("lua>tab a>keybinds_x", false)
gui.set_visible("lua>tab a>keybinds_y", false)


function animate(value, cond, max, speed, dynamic, clamp)

    -- animation speed
    speed = speed * global_vars.frametime * 20

    -- static animation
    if dynamic == false then
        if cond then
            value = value + speed
        else
            value = value - speed
        end

    -- dynamic animation
    else
        if cond then
            value = value + (max - value) * (speed / 100)
        else
            value = value - (0 + value) * (speed / 100)
        end
    end

    -- clamp value
    if clamp then
        if value > max then
            value = max
        elseif value < 0 then
            value = 0
        end
    end

    return value
end

function drag(var_x, var_y, size_x, size_y)
    local mouse_x, mouse_y = input.get_cursor_pos()

    local drag = false

    if input.is_key_down(0x01) then
        if mouse_x > var_x:get_int() and mouse_y > var_y:get_int() and mouse_x < var_x:get_int() + size_x and mouse_y < var_y:get_int() + size_y then
            drag = true
        end
    else
        drag = false
    end

    if (drag) then
        var_x:set_int(mouse_x - (size_x / 2))
        var_y:set_int(mouse_y - (size_y / 2))
    end

end
function on_keybinds()

    if not keybinds:get_bool() then return end

    local pos = {keybinds_x:get_int(), keybinds_y:get_int()}

    local size_offset = 0

    local binds =
    {
        gui.get_config_item("rage>aimbot>aimbot>double tap"):get_bool(),
        gui.get_config_item("rage>aimbot>aimbot>hide shot"):get_bool(),
        gui.get_config_item("rage>aimbot>ssg08>scout>override"):get_bool(), -- override dmg is taken from the scout
        gui.get_config_item("rage>aimbot>aimbot>headshot only"):get_bool(),
        gui.get_config_item("misc>movement>fake duck"):get_bool()
    }

    local binds_name =
    {
        "Doubletap",
        "Hideshots",
        "Min. Damage",
        "HeadShot Only",
        "Fake duck",
        "HeadShot Only",
    }

    if not binds[4] then
        if not binds[5] then
            if not binds[3] then
                if not binds[1] then
                    if not binds[6] then
                        if not binds[2] then
                            size_offset = 0
                        else
                            size_offset = 38
                        end
                    else
                        size_offset = 40
                    end
                else
                    size_offset = 41
                end
            else
                size_offset = 54
            end
        else
            size_offset = 63
        end
    else
        size_offset = 70
    end

    animated_size_offset = animate(animated_size_offset or 0, true, size_offset, 60, true, false)

    local size = {100 + animated_size_offset, 22}

    local enabled = "[enabled]"
    local text_size = render.get_text_size(verdana, enabled) + 7

    local override_active = binds[3] or binds[4] or binds[5] or binds[6] or binds[7] or binds[8]
    local other_binds_active = binds[1] or binds[2] or binds[9] or binds[10] or binds[11]

    drag(keybinds_x, keybinds_y, size[1], size[2])

    alpha = animate(alpha or 0, gui.is_menu_open() or override_active or other_binds_active, 1, 0.5, false, true)

    -- glow
    for i = 1, 10 do
        render.rect_filled_rounded(pos[1] - i, pos[2] - i, pos[1] + size[1] + i, pos[2] + size[2] + i, render.color(keybinds_color:get_color().r, keybinds_color:get_color().g, keybinds_color:get_color().b, (20 - (2 * i)) * alpha), 10)
    end

    -- top rect
    render.push_clip_rect(pos[1], pos[2], pos[1] + size[1], pos[2] + 5)
    render.rect_filled_rounded(pos[1], pos[2], pos[1] + size[1], pos[2] + size[2], render.color(0, 0, 0, 105 * alpha), 5)
    render.pop_clip_rect()

    -- bot rect
    render.push_clip_rect(pos[1], pos[2] + 17, pos[1] + size[1], pos[2] + 22)
    render.rect_filled_rounded(pos[1], pos[2], pos[1] + size[1], pos[2] + 22, render.color(0, 0, 0, 105 * alpha), 5)
    render.pop_clip_rect()

    -- other colormain:get_color().r
    render.rect_filled_multicolor(pos[1], pos[2] + 5, pos[1] + size[1], pos[2] + 17, render.color(keybinds_color:get_color().r, keybinds_color:get_color().g, keybinds_color:get_color().b, 255 * alpha), render.color(keybinds_color:get_color().r, keybinds_color:get_color().g, keybinds_color:get_color().b, 255 * alpha), render.color(keybinds_color:get_color().r, keybinds_color:get_color().g, keybinds_color:get_color().b, 255 * alpha), render.color(keybinds_color:get_color().r, keybinds_color:get_color().g, keybinds_color:get_color().b, 255 * alpha))
    render.rect_filled_rounded(pos[1] + 2, pos[2] + 2, pos[1] + size[1] - 2, pos[2] + 20, render.color(0, 0, 0, 255 * alpha), 5)
    render.text(verdana, pos[1] + size[1] / 2 - render.get_text_size(verdana, "keybinds") / 2 - 1, pos[2] + 7, "keybinds", render.color(255, 255, 255, 255 * alpha))


    local bind_offset = 0
    dt_alpha = animate(dt_alpha or 0, binds[1], 1, 0.5, false, true)
    render.text(verdana, pos[1] + 6, pos[2] + size[2] + 2, binds_name[1], render.color(255, 255, 255, 255 * dt_alpha))
    render.text(verdana, pos[1] + size[1] - text_size, pos[2] + size[2] + 2, enabled, render.color(255, 255, 255, 255 * dt_alpha))
    if binds[1] then
        bind_offset = bind_offset + 11
    end

    hs_alpha = animate(hs_alpha or 0, binds[2], 1, 0.5, false, true)
    render.text(verdana, pos[1] + 6, pos[2] + size[2] + 2 + bind_offset, binds_name[2], render.color(255, 255, 255, 255 * hs_alpha))
    render.text(verdana, pos[1] + size[1] - text_size, pos[2] + size[2] + 2 + bind_offset, enabled, render.color(255, 255, 255, 255 * hs_alpha))
    if binds[2] then
        bind_offset = bind_offset + 11
    end

    dmg_alpha = animate(dmg_alpha or 0, binds[3], 1, 0.5, false, true)
    render.text(verdana, pos[1] + 6, pos[2] + size[2] + 2 + bind_offset, binds_name[3], render.color(255, 255, 255, 255 * dmg_alpha))
    render.text(verdana, pos[1] + size[1] - text_size, pos[2] + size[2] + 2 + bind_offset, enabled, render.color(255, 255, 255, 255 * dmg_alpha))
    if binds[3] then
        bind_offset = bind_offset + 11
    end

    fs_alpha = animate(fs_alpha or 0, binds[4], 1, 0.5, false, true)
    render.text(verdana, pos[1] + 6, pos[2] + size[2] + 2 + bind_offset, binds_name[4], render.color(255, 255, 255, 255 * fs_alpha))
    render.text(verdana, pos[1] + size[1] - text_size, pos[2] + size[2] + 2 + bind_offset, enabled, render.color(255, 255, 255, 255 * fs_alpha))
    if binds[4] then
        bind_offset = bind_offset + 11
    end

    ho_alpha = animate(ho_alpha or 0, binds[5], 1, 0.5, false, true)
    render.text(verdana, pos[1] + 6, pos[2] + size[2] + 2 + bind_offset, binds_name[5], render.color(255, 255, 255, 255 * ho_alpha))
    render.text(verdana, pos[1] + size[1] - text_size, pos[2] + size[2] + 2 + bind_offset, enabled, render.color(255, 255, 255, 255 * ho_alpha))
    if binds[5] then
        bind_offset = bind_offset + 11
    end

    fd_alpha = animate(fd_alpha or 0, binds[6], 1, 0.5, false, true)
    render.text(verdana, pos[1] + 6, pos[2] + size[2] + 2 + bind_offset, binds_name[6], render.color(255, 255, 255, 255 * fd_alpha))
    render.text(verdana, pos[1] + size[1] - text_size, pos[2] + size[2] + 2 + bind_offset, enabled, render.color(255, 255, 255, 255 * fd_alpha))

end

local font = render.font_esp



function builder()
    if engine.is_in_game() == false then return end
    if WorkAA:get_bool() then
        local slowwalk = slide:get_bool()
        local lplr = entities.get_entity(engine.get_local_player())
        local flag = lplr:get_prop("m_fFlags")
        local air = lplr:get_prop("m_hGroundEntity") == -1
        local velocity_x = math.floor(lplr:get_prop("m_vecVelocity[0]"))
        local velocity_y = math.floor(lplr:get_prop("m_vecVelocity[1]"))
        local speed = math.sqrt(velocity_x ^ 2 + velocity_y ^ 2)
        local crouch = input.is_key_down(0x11)

        if slowwalk and not air and flag ~= 263 then
            jittertoggle:set_bool(slowwalk_jittertoggle:get_bool())
            jitterrange:set_int(slowwalk_jitterrange:get_int())
            faketoggle:set_bool(slowwalk_faketoggle:get_bool())
            fakeamount:set_int(global_vars.tickcount % 4 >= 2 and 30 * 1.666666667 or slowwalk_fakeamount:get_int() * 1.666666667 + 2)
            compangle:set_int(global_vars.tickcount % 4 >= 2 and 30 * 1.666666667 * 1.666666667 + 2 or slowwalk_compangle:get_int())
            fakejitter:set_bool(slowwalk_fakejitter:get_bool())

        else if speed > 2 and not air and not crouch then
            jittertoggle:set_bool(moving_jittertoggle:get_bool())
            jitterrange:set_int(moving_jitterrange:get_int())
            faketoggle:set_bool(moving_faketoggle:get_bool())
            fakeamount:set_int(global_vars.tickcount % 4 >= 2 and 30 * 1.666666667 or moving_fakeamount:get_int() * 1.666666667 + 2)
            compangle:set_int(global_vars.tickcount % 4 >= 2 and -18 * 1.666666667 or moving_compangle:get_int())
            fakejitter:set_bool(moving_fakejitter:get_bool())

        else if speed <= 2 and flag == 257 then
            jittertoggle:set_bool(standing_jittertoggle:get_bool())
            jitterrange:set_int(standing_jitterrange:get_int())
            faketoggle:set_bool(standing_faketoggle:get_bool())
            fakeamount:set_int(global_vars.tickcount % 4 >= 2 and 30 * 1.666666667 or standing_fakeamount:get_int() * 1.666666667 + 2)
            compangle:set_int(global_vars.tickcount % 4 >= 2 and 30 * 1.666666667 * 1.666666667 + 2 or standing_compangle:get_int())
            fakejitter:set_bool(standing_fakejitter:get_bool())

        else if crouch then
            jittertoggle:set_bool(crouching_jittertoggle:get_bool())
            jitterrange:set_int(crouching_jitterrange:get_int())
            faketoggle:set_bool(crouching_faketoggle:get_bool())
            fakeamount:set_int(global_vars.tickcount % 4 >= 2 and 30 * 1.666666667 or crouching_fakeamount:get_int() * 1.666666667 + 2)
            compangle:set_int(global_vars.tickcount % 4 >= 2 and 30 * 1.666666667 * 1.666666667 + 2 or crouching_compangle:get_int())
            fakejitter:set_bool(crouching_fakejitter:get_bool())

        else if air and flag ~= 262 then
            jittertoggle:set_bool(air_jittertoggle:get_bool())
            jitterrange:set_int(air_jitterrange:get_int())
            faketoggle:set_bool(air_faketoggle:get_bool())
            fakeamount:set_int(global_vars.tickcount % 4 >= 2 and 30 * 1.666666667 or air_fakeamount:get_int() * 1.666666667 + 2)
            compangle:set_int(global_vars.tickcount % 4 >= 2 and 30 * 1.666666667 * 1.666666667 + 2 or air_compangle:get_int())
            fakejitter:set_bool(air_fakejitter:get_bool())

        else if flag == 262 then
            jittertoggle:set_bool(crouching_jittertoggle:get_bool())
            jitterrange:set_int(crouching_jitterrange:get_int())
            faketoggle:set_bool(crouching_faketoggle:get_bool())
            fakeamount:set_int(global_vars.tickcount % 4 >= 2 and 30 * 1.666666667 or crouching_fakeamount:get_int() * 1.666666667 + 2)
            compangle:set_int(global_vars.tickcount % 4 >= 2 and 30 * 1.666666667 * 1.666666667 + 2 or crouching_compangle:get_int())
            fakejitter:set_bool(crouching_fakejitter:get_bool())

        end
        end
        end
        end
        end
    end
end
end

local default = resolver_reference:get_int()

function resolvermode()
    if rollsolver:get_bool() then resolver_reference:set_int(0) else resolver_reference:set_int(default) end
end

function on_shutdown()
    utils.set_clan_tag("");
    resolver_reference:set_int(default)
end

function on_paint()
    watermark()
    gui_controller()
    guiscc()
    on_keybinds()
    fakelagrgb()
    clock_inverter()
    clantagfc()
    gui_system()
    builder()
    aspect_ratio2()
    indicators()
    ID()
    arrowsd()
end

local on_ground_ticks = 0

local sigs = {
    get_pose_params = {"client.dll", "55 8B EC 8B 45 08 57 8B F9 8B 4F 04 85 C9 75 15"} -- https://github.com/perilouswithadollarsign/cstrike15_src/blob/master/public/studio.cpp#L931 
}

local offsets = {
    animstate = 0x9960, -- m_bIsScoped - 20
    m_pStudioHdr = 0x2950, -- https://github.com/frk1/hazedumper/blob/master/csgo.json#L55
    landing_anim = 0x109,
}

local bind_argument = function(fn, arg)
    return function(...)
        return fn(arg, ...)
    end
end

local interface_type = ffi.typeof("uintptr_t**")

local i_client_entity_list = ffi.cast(interface_type, utils.find_interface("client.dll", "VClientEntityList003"))
local get_client_entity = bind_argument(ffi.cast("void*(__thiscall*)(void*, int)", i_client_entity_list[0][3]), i_client_entity_list)

local get_pose_parameters = ffi.cast( "struct {char pad[8]; float m_flStart; float m_flEnd; float m_flState;}*(__thiscall* )( void*, int )", utils.find_pattern(unpack(sigs.get_pose_params)))

local cache = {}

local set_layer = function(player_ptr, layer, start_val, end_val)

    player_ptr = ffi.cast("unsigned int", player_ptr)

    if player_ptr == 0x0 then
        return false
    end

    local studio_hdr = ffi.cast("void**", player_ptr + offsets.m_pStudioHdr)[0]

    if studio_hdr == nil then
        return false
    end

    local pose_params = get_pose_parameters(studio_hdr, layer)

    if pose_params == nil then
        return
    end

    if cache[layer] == nil then
        cache[layer] = {}

        cache[layer].m_flStart = pose_params.m_flStart
        cache[layer].m_flEnd = pose_params.m_flEnd

        cache[layer].m_flState = pose_params.m_flState

        cache[layer].installed = false
        return true
    end

    if start_val ~= nil and not cache[layer].installed then

        pose_params.m_flStart   = start_val
        pose_params.m_flEnd     = end_val

        pose_params.m_flState   = (pose_params.m_flStart + pose_params.m_flEnd) / 2

        cache[layer].installed = true
        return true
    end
    
    if cache[layer].installed then

        pose_params.m_flStart   = cache[layer].m_flStart
        pose_params.m_flEnd     = cache[layer].m_flEnd

        pose_params.m_flState   = cache[layer].m_flState

        cache[layer].installed = false

        return true
    end

    return false
end

local setup = function(cmd)

    local local_player = get_client_entity(engine.get_local_player())

    if local_player == nil then
        return
    end

    local animstate = ffi.cast( "void**", ffi.cast("unsigned int", local_player) + offsets.animstate)[0]

    if animstate == nil then
        return
    end

    animstate = ffi.cast("unsigned int", animstate)

    if animstate == 0x0 then
        return
    end

    local landing_anim = ffi.cast("bool*", animstate + offsets.landing_anim)[0]

    if landing_anim == nil then
        return
    end

    for k, _ in pairs(cache) do
        set_layer(local_player, k)
    end

    set_layer(local_player, 0, -180, -179) -- leg movement -- m_flPoseParamter 0

    set_layer(local_player, 6, 0.9, 1) -- falling anim -- m_flPoseParamter 6

    if on_ground_ticks > 12 and landing_anim then
        set_layer(local_player, 12, 0.999, 1) -- pitch -- m_flPoseParamter 12
    end
end

local on_destroy = function()

    local local_player = get_client_entity(engine.get_local_player())

    if local_player == nil then
        return
    end

    for k, _ in pairs(cache) do
        set_layer(local_player, k)
    end

end

function on_create_move(cmd)
    -- print(bit.band(cmd:get_buttons(), csgo.in_jump) == 0)

    setup(cmd)

    local local_player = entities.get_entity(engine.get_local_player())
    if local_player == nil then
        return
    end

    local on_ground = bit.band(local_player:get_prop("m_fFlags"),1)
    if on_ground == 1 then
        on_ground_ticks = on_ground_ticks + 1
    else
        on_ground_ticks = 0
    end

    -- print(on_ground_ticks)
end
function on_shutdown()
    on_destroy()
end



