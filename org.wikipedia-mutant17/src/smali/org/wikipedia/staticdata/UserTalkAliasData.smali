.class public final Lorg/wikipedia/staticdata/UserTalkAliasData;
.super Ljava/lang/Object;
.source "UserTalkAliasData.java"


# static fields
.field private static final DATA_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    invoke-static {}, Lorg/wikipedia/staticdata/UserTalkAliasData;->newMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/staticdata/UserTalkAliasData;->DATA_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static newMap()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x132

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "ab"

    const-string v2, "\u0410\u043b\u0430\u0445\u04d9\u044b\u043b\u0430 \u0430\u0445\u0446\u04d9\u0430\u0436\u04d9\u0430\u0440\u0430"

    .line 26
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ace"

    const-string v2, "Marit Ureu\u00ebng Ngui"

    .line 27
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ady"

    const-string v2, "User talk"

    .line 28
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "af"

    const-string v3, "Gebruikerbespreking"

    .line 29
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ak"

    const-string v3, "Odwumany\u025bni nk\u0254mm\u0254bea"

    .line 30
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "als"

    const-string v3, "Benutzer Diskussion"

    .line 31
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "am"

    const-string v4, "\u12a0\u1263\u120d \u12cd\u12ed\u12ed\u1275"

    .line 32
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "an"

    const-string v4, "Descusi\u00f3n usuario"

    .line 33
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ang"

    const-string v4, "Br\u016bcendm\u014dtung"

    .line 34
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ar"

    const-string v4, "\u0646\u0642\u0627\u0634 \u0627\u0644\u0645\u0633\u062a\u062e\u062f\u0645"

    .line 35
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "arc"

    const-string v5, "\u0721\u0721\u0720\u0720\u0710 \u0715\u0721\u0726\u0720\u071a\u0722\u0710"

    .line 36
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ary"

    .line 37
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "arz"

    .line 38
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "as"

    const-string v4, "\u09b8\u09a6\u09b8\u09cd\u09af \u09ac\u09be\u09f0\u09cd\u09a4\u09be"

    .line 39
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ast"

    const-string v4, "Usuariu alderique"

    .line 40
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "atj"

    const-string v4, "Ke ici aimihitonaniwok notcita iriniw"

    .line 41
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "av"

    const-string v4, "\u041e\u0431\u0441\u0443\u0436\u0434\u0435\u043d\u0438\u0435 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a\u0430"

    .line 42
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "avk"

    const-string v5, "Favesikprilara"

    .line 43
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "awa"

    const-string v5, "\u092f\u0942\u091c\u0930 \u092c\u093e\u0924\u091a\u0940\u0924"

    .line 44
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ay"

    const-string v5, "Usuario discusi\u00f3n"

    .line 45
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "az"

    const-string v6, "\u0130stifad\u0259\u00e7i m\u00fczakir\u0259si"

    .line 46
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "azb"

    const-string v6, "\u0627\u06cc\u0634\u0644\u062f\u0646 \u062f\u0627\u0646\u06cc\u0634\u06cc\u063a\u06cc"

    .line 47
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ba"

    const-string v6, "\u04a0\u0430\u0442\u043d\u0430\u0448\u044b\u0443\u0441\u044b \u043c\u0435\u043d\u04d9\u043d \u04bb\u04e9\u0439\u043b\u04d9\u0448\u0435\u04af"

    .line 48
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ban"

    const-string v6, "Pabligbagan Sang Angangg\u00e9"

    .line 49
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bar"

    const-string v6, "Nutza Dischkrian"

    .line 50
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bat-smg"

    const-string v6, "Nauduotuoj\u0117 aptar\u0117ms"

    .line 51
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bcl"

    const-string v6, "Olay kan paragamit"

    .line 52
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "be"

    const-string v6, "\u0420\u0430\u0437\u043c\u043e\u0432\u044b \u0437 \u0443\u0434\u0437\u0435\u043b\u044c\u043d\u0456\u043a\u0430\u043c"

    .line 53
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "be-x-old"

    const-string v6, "\u0413\u0443\u0442\u0430\u0440\u043a\u0456 \u045e\u0434\u0437\u0435\u043b\u044c\u043d\u0456\u043a\u0430"

    .line 54
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bg"

    const-string v6, "\u041f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b \u0431\u0435\u0441\u0435\u0434\u0430"

    .line 55
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bh"

    const-string v6, "\u092a\u094d\u0930\u092f\u094b\u0917\u0915\u0930\u094d\u0924\u093e \u0935\u093e\u0930\u094d\u0924\u093e"

    .line 56
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bi"

    .line 57
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bjn"

    const-string v7, "Pamandiran Pamakai"

    .line 58
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bm"

    const-string v7, "Discussion utilisateur"

    .line 59
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bn"

    const-string v8, "\u09ac\u09cd\u09af\u09ac\u09b9\u09be\u09b0\u0995\u09be\u09b0\u09c0 \u0986\u09b2\u09be\u09aa"

    .line 60
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bo"

    .line 61
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bpy"

    const-string v8, "\u0986\u09a4\u09be\u0995\u09c1\u09b0\u09be\u09b0 \u09af\u09bc\u09cd\u09af\u09be\u09b0\u09c0"

    .line 62
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "br"

    const-string v8, "Kaozeadenn Implijer"

    .line 63
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bs"

    const-string v8, "Razgovor s korisnikom"

    .line 64
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bug"

    const-string v8, "Pembicaraan Pengguna"

    .line 65
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bxr"

    const-string v9, "\u0425\u044d\u0440\u044d\u0433\u043b\u044d\u0433\u0448\u044b\u0435 \u0445\u044d\u043b\u044d\u043b\u0441\u044d\u0445\u044d"

    .line 66
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ca"

    const-string v9, "Usuari Discussi\u00f3"

    .line 67
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cbk-zam"

    .line 68
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cdo"

    const-string v9, "\u7528\u6236\u8a0e\u8ad6"

    .line 69
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ce"

    const-string v10, "\u0414\u0435\u043a\u044a\u0430\u0448\u0445\u043e\u0447\u0443\u043d \u0434\u0438\u0439\u0446\u0430\u0440\u0435"

    .line 70
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ceb"

    const-string v10, "Hisgot sa Gumagamit"

    .line 71
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ch"

    const-string v10, "Kombetsasion ni muna\'sesetbi"

    .line 72
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "chr"

    .line 73
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "chy"

    .line 74
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ckb"

    const-string v10, "\u0644\u06ce\u062f\u0648\u0627\u0646\u06cc \u0628\u06d5\u06a9\u0627\u0631\u06be\u06ce\u0646\u06d5\u0631"

    .line 75
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "co"

    const-string v10, "Discussioni utente"

    .line 76
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cr"

    .line 77
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "crh"

    const-string v11, "Qullan\u0131c\u0131 muzakeresi"

    .line 78
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cs"

    const-string v11, "Diskuse s wikipedistou"

    .line 79
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "csb"

    const-string v11, "Disk\u00f9s\u00ebj\u00f4 br\u00ebk\u00f2wnika"

    .line 80
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cu"

    const-string v11, "\u041f\u043e\u043b\u044c\ua643\u0454\u0432\u0430\u0442\u0454\u043b\ua657 \u0431\u0454\u0441\u0463\u0434\u0430"

    .line 81
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cv"

    const-string v11, "\u0425\u0443\u0442\u0448\u0103\u043d\u0430\u043a\u0430\u043d\u0103\u043d \u043a\u0430\u043d\u0430\u0448\u043b\u0443 \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0438"

    .line 82
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cy"

    const-string v11, "Sgwrs Defnyddiwr"

    .line 83
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "da"

    const-string v11, "Brugerdiskussion"

    .line 84
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "de"

    .line 85
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "din"

    const-string v11, "Jam kek\u00eb dulooi"

    .line 86
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "diq"

    const-string v11, "Karber vaten"

    .line 87
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dsb"

    const-string v11, "Diskusija wu\u017eywarja"

    .line 88
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dty"

    const-string v11, "\u092a\u094d\u0930\u092f\u094b\u0917\u0915\u0930\u094d\u0924\u093e \u0915\u0941\u0930\u0923\u093f"

    .line 89
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dv"

    const-string v11, "\u0789\u07ac\u0789\u07b0\u0784\u07a6\u0783\u07aa\u078e\u07ac \u0788\u07a7\u0780\u07a6\u0786\u07a6"

    .line 90
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dz"

    .line 91
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ee"

    .line 92
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "el"

    const-string v11, "\u03a3\u03c5\u03b6\u03ae\u03c4\u03b7\u03c3\u03b7 \u03c7\u03c1\u03ae\u03c3\u03c4\u03b7"

    .line 93
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "eml"

    .line 94
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "en"

    .line 95
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "eo"

    const-string v11, "Uzanto-Diskuto"

    .line 96
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "es"

    .line 97
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "et"

    const-string v5, "Kasutaja arutelu"

    .line 98
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "eu"

    const-string v5, "Lankide eztabaida"

    .line 99
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ext"

    const-string v5, "Usuario caraba"

    .line 100
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fa"

    const-string v5, "\u0628\u062d\u062b \u06a9\u0627\u0631\u0628\u0631"

    .line 101
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ff"

    .line 102
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fi"

    const-string v5, "Keskustelu k\u00e4ytt\u00e4j\u00e4st\u00e4"

    .line 103
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fiu-vro"

    const-string v5, "Pruukja arotus"

    .line 104
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fj"

    .line 105
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fo"

    const-string v5, "Br\u00fakarakjak"

    .line 106
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fr"

    .line 107
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "frp"

    const-string v5, "Discussion utilisator"

    .line 108
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "frr"

    .line 109
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fur"

    const-string v3, "Discussion utent"

    .line 110
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fy"

    const-string v3, "Meidogger oerlis"

    .line 111
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ga"

    const-string v3, "Pl\u00e9 \u00fas\u00e1ideora"

    .line 112
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gag"

    const-string v3, "Kullan\u0131c\u0131 dart\u0131\u015fma"

    .line 113
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gan"

    const-string v3, "\u7528\u6236\u30fb\u8ac7\u8a51"

    .line 114
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gcr"

    const-string v3, "Diskisyon itilizat\u00f2"

    .line 115
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gd"

    const-string v3, "Deasbaireachd a\' chleachdaiche"

    .line 116
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gl"

    const-string v3, "Conversa usuario"

    .line 117
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "glk"

    const-string v3, "\u06a9\u0627\u0631\u06af\u064a\u0631\u02c7 \u06af\u0628"

    .line 118
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gn"

    const-string v3, "Puruh\u00e1ra myangek\u00f5i"

    .line 119
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gom"

    const-string v3, "\u0935\u093e\u092a\u0930\u092a\u0940 \u091a\u0930\u094d\u091a\u093e"

    .line 120
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gor"

    const-string v3, "Lo\'iya ta ohu\'owo"

    .line 121
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "got"

    const-string v3, "\ud800\udf3d\ud800\udf39\ud800\udf3f\ud800\udf44\ud800\udf30\ud800\udf3d\ud800\udf33\ud800\udf39\ud800\udf43 \ud800\udf32\ud800\udf30\ud800\udf45\ud800\udf30\ud800\udf3f\ud800\udf42\ud800\udf33\ud800\udf3e\ud800\udf30"

    .line 122
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gu"

    const-string v3, "\u0ab8\u0aad\u0acd\u0aaf\u0aa8\u0ac0 \u0a9a\u0ab0\u0acd\u0a9a\u0abe"

    .line 123
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gv"

    const-string v3, "Resooney ymmydeyr"

    .line 124
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ha"

    .line 125
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hak"

    .line 126
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "haw"

    const-string v3, "K\u016bk\u0101k\u016bk\u0101 o mea ho\u02bbohana"

    .line 127
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "he"

    const-string v3, "\u05e9\u05d9\u05d7\u05ea \u05de\u05e9\u05ea\u05de\u05e9"

    .line 128
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hi"

    const-string v3, "\u0938\u0926\u0938\u094d\u092f \u0935\u093e\u0930\u094d\u0924\u093e"

    .line 129
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hif"

    const-string v3, "sadasya ke baat"

    .line 130
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hr"

    const-string v3, "Razgovor sa suradnikom"

    .line 131
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hsb"

    const-string v3, "Diskusija z wu\u017eiwarjom"

    .line 132
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ht"

    const-string v3, "Diskisyon Itilizat\u00e8"

    .line 133
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hu"

    const-string v3, "Szerkeszt\u0151vita"

    .line 134
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hy"

    const-string v3, "\u0544\u0561\u057d\u0576\u0561\u056f\u0581\u056b \u0584\u0576\u0576\u0561\u0580\u056f\u0578\u0582\u0574"

    .line 135
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hyw"

    .line 136
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ia"

    const-string v3, "Discussion Usator"

    .line 137
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id"

    .line 138
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ie"

    const-string v3, "Usator Discussion"

    .line 139
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ig"

    const-string v3, "Okwu \u1ecdbanife"

    .line 140
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ik"

    .line 141
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ilo"

    const-string v3, "Agar-aramat tungtungan"

    .line 142
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "inh"

    const-string v3, "\u0414\u043e\u0430\u043a\u044a\u0430\u0448\u0445\u043e\u0447\u0443\u043d \u0434\u0443\u0432\u0446\u0430\u0440"

    .line 143
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "io"

    const-string v3, "Uzanto Debato"

    .line 144
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "is"

    const-string v3, "Notandaspjall"

    .line 145
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "it"

    .line 146
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "iu"

    .line 147
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ja"

    const-string v3, "\u5229\u7528\u8005\u2010\u4f1a\u8a71"

    .line 148
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "jam"

    .line 149
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "jbo"

    const-string v3, "casnu lo pilno"

    .line 150
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "jv"

    const-string v3, "Parembugan Naraguna"

    .line 151
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ka"

    const-string v5, "\u10db\u10dd\u10db\u10ee\u10db\u10d0\u10e0\u10d4\u10d1\u10da\u10d8\u10e1 \u10d2\u10d0\u10dc\u10ee\u10d8\u10da\u10d5\u10d0"

    .line 152
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "kaa"

    const-string v8, "Paydalan\u0131wsh\u0131 sa\'wbeti"

    .line 153
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "kab"

    const-string v8, "Amyannan umsqedac"

    .line 154
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "kbd"

    const-string v8, "\u0426\u04c0\u044b\u0445\u0443\u0445\u044d\u0442 \u0442\u0435\u043f\u0441\u044d\u043b\u044a\u044d\u0445\u044c\u044b\u0433\u044a\u0443\u044d"

    .line 155
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "kbp"

    .line 156
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "kg"

    const-string v8, "Disolo kisadi"

    .line 157
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ki"

    .line 158
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "kk"

    const-string v8, "\u049a\u0430\u0442\u044b\u0441\u0443\u0448\u044b \u0442\u0430\u043b\u049b\u044b\u043b\u0430\u0443\u044b"

    .line 159
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "kl"

    const-string v8, "Atuisup oqalliffia"

    .line 160
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "km"

    const-string v8, "\u1780\u17b6\u179a\u1796\u17b7\u1797\u17b6\u1780\u17d2\u179f\u17b6\u179a\u1794\u179f\u17cb\u17a2\u17d2\u1793\u1780\u1794\u17d2\u179a\u17be\u1794\u17d2\u179a\u17b6\u179f\u17cb"

    .line 161
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "kn"

    const-string v8, "\u0cb8\u0ca6\u0cb8\u0ccd\u0caf\u0cb0 \u0c9a\u0cb0\u0ccd\u0c9a\u0cc6\u0caa\u0cc1\u0c9f"

    .line 162
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ko"

    const-string v8, "\uc0ac\uc6a9\uc790\ud1a0\ub860"

    .line 163
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "koi"

    .line 164
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "krc"

    const-string v8, "\u041a\u044a\u043e\u0448\u0443\u043b\u0443\u0443\u0447\u0443\u043d\u0443 \u0441\u044e\u0437\u044e\u0443"

    .line 165
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ks"

    const-string v8, "\u0631\u064f\u06a9\u064f\u0646 \u0628\u064e\u062d\u064e\u0698"

    .line 166
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ksh"

    const-string v8, "Metmaacher Klaaf"

    .line 167
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ku"

    const-string v8, "Got\u00fbb\u00eaja bikarh\u00eaner"

    .line 168
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "kv"

    const-string v8, "\u041f\u044b\u0440\u044b\u0441\u044c\u043a\u04e7\u0434 \u0441\u0451\u0440\u043d\u0438\u0442\u0430\u043di\u043d"

    .line 169
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "kw"

    const-string v8, "Keskows Devnydhyer"

    .line 170
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ky"

    const-string v8, "\u041a\u043e\u043b\u0434\u043e\u043d\u0443\u0443\u0447\u0443\u043d\u0443\u043d \u0431\u0430\u0430\u0440\u043b\u0430\u0448\u0443\u0443\u043b\u0430\u0440\u044b"

    .line 171
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "la"

    const-string v8, "Disputatio Usoris"

    .line 172
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lad"

    const-string v8, "Messaje de Usador"

    .line 173
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lb"

    const-string v8, "Benotzer Diskussioun"

    .line 174
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lbe"

    const-string v8, "\u0413\u044c\u0443\u0440\u0442\u0442\u0443 \u0445\u044c\u0443\u043c\u0438\u043d\u043d\u0430\u043b \u0438\u0445\u0442\u0438\u043b\u0430\u0442"

    .line 175
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lez"

    const-string v8, "\u0423\u0440\u0442\u0430\u0445\u0434\u0438\u043d \u0432\u0435\u0440\u0435\u0432\u0438\u0440\u0434 \u0430\u0432\u0443\u043d"

    .line 176
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lfn"

    const-string v8, "Usor Discute"

    .line 177
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lg"

    .line 178
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "li"

    const-string v8, "Euverl\u00e8k gebroeker"

    .line 179
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lij"

    const-string v8, "Disc\u00fbscio\u00een \u00fbtente"

    .line 180
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lld"

    .line 181
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lmo"

    const-string v8, "Ciciarada Druvadur"

    .line 182
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ln"

    .line 183
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lo"

    const-string v8, "\u0eaa\u0ebb\u0e99\u0e97\u0eb0\u0e99\u0eb2\u0e82\u0ead\u0e87\u0e9c\u0eb9\u0ec9\u0ec3\u0e8a\u0ec9"

    .line 184
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lrc"

    const-string v8, "\u0686\u0623\u06a9 \u0686\u0626\u0646\u06d5 \u06a9\u0627\u0631\u06cc\u0627\u0631"

    .line 185
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lt"

    const-string v8, "Naudotojo aptarimas"

    .line 186
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ltg"

    const-string v8, "Spr\u012b\u017ea ap l\u012btuotuoju"

    .line 187
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lv"

    const-string v8, "Dal\u012bbnieka diskusija"

    .line 188
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mai"

    .line 189
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "map-bms"

    .line 190
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mdf"

    const-string v3, "\u0422\u0438\u0438\u0441\u044c \u043a\u043e\u0440\u0445\u043d\u0435\u043c\u0430"

    .line 191
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mg"

    const-string v3, "Dinika amin\'ny mpikambana"

    .line 192
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mhr"

    const-string v3, "\u041f\u0430\u0439\u0434\u0430\u043b\u0430\u043d\u044b\u0448\u044b\u043d \u043a\u0430\u04a5\u0430\u0448\u044b\u043c\u0430\u0448\u044b\u0436\u0435"

    .line 193
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mi"

    .line 194
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "min"

    const-string v3, "Rundiang Pangguno"

    .line 195
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mk"

    const-string v3, "\u0420\u0430\u0437\u0433\u043e\u0432\u043e\u0440 \u0441\u043e \u043a\u043e\u0440\u0438\u0441\u043d\u0438\u043a"

    .line 196
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ml"

    const-string v3, "\u0d09\u0d2a\u0d2f\u0d4b\u0d15\u0d4d\u0d24\u0d3e\u0d35\u0d3f\u0d28\u0d4d\u0d31\u0d46 \u0d38\u0d02\u0d35\u0d3e\u0d26\u0d02"

    .line 197
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mn"

    const-string v3, "\u0425\u044d\u0440\u044d\u0433\u043b\u044d\u0433\u0447\u0438\u0439\u043d \u044f\u0440\u0438\u0430"

    .line 198
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mnw"

    const-string v3, "\u100a\u1038\u101c\u103d\u1015\u103a \u1013\u101b\u102e\u102f\u1000\u103b\u102c"

    .line 199
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mr"

    const-string v3, "\u0938\u0926\u0938\u094d\u092f \u091a\u0930\u094d\u091a\u093e"

    .line 200
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mrj"

    const-string v3, "\u0421\u0438\u0440\u04f9\u0448\u04f9\u043c \u043a\u04d3\u043d\u0433\u04d3\u0448\u04f9\u043c\u04d3\u0448"

    .line 201
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ms"

    const-string v3, "Perbincangan pengguna"

    .line 202
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mt"

    const-string v3, "Diskussjoni utent"

    .line 203
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mwl"

    const-string v3, "Cumbersa outelizador(a)"

    .line 204
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "my"

    const-string v3, "\u1021\u101e\u102f\u1036\u1038\u1015\u103c\u102f\u101e\u1030 \u1006\u103d\u1031\u1038\u1014\u103d\u1031\u1038\u1001\u103b\u1000\u103a"

    .line 205
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "myv"

    const-string v3, "\u0422\u0435\u0438\u0446\u044f\u043d\u044c \u043a\u043e\u0440\u0442\u0430\u043c\u043e\u0441\u044c"

    .line 206
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mzn"

    const-string v3, "\u06a9\u0627\u0631\u0648\u0631 \u06af\u067e"

    .line 207
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "na"

    .line 208
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nah"

    const-string v3, "Tlatequitiltil\u012blli t\u0113ixn\u0101miquiliztli"

    .line 209
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nap"

    const-string v3, "Utente chi\u00e0cchiera"

    .line 210
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nds"

    const-string v3, "Bruker Diskuschoon"

    .line 211
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nds-nl"

    const-string v3, "Overleg gebruker"

    .line 212
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ne"

    .line 213
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "new"

    const-string v6, "\u091b\u094d\u092f\u0947\u0932\u0947\u092e\u093f \u0916\u0901\u0932\u093e\u092c\u0901\u0932\u093e"

    .line 214
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nl"

    const-string v6, "Overleg gebruiker"

    .line 215
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nn"

    const-string v6, "Brukardiskusjon"

    .line 216
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nb"

    const-string v6, "Brukerdiskusjon"

    .line 217
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nov"

    .line 218
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nqo"

    const-string v6, "\u07df\u07ca\u07d3\u07ca\u07ef\u07d9\u07df\u07ca \u07df\u07ca\u07eb \u07e2\u07ca\u07dd\u07d0\u07de\u07e3\u07cd"

    .line 219
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nrm"

    .line 220
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nso"

    const-string v6, "Boledi\u0161ana le Mo\u0161omi"

    .line 221
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nv"

    const-string v6, "Choyoo\u0142\u02bc\u012f\u012fh\u00ed bich\u02bc\u012f\u02bc y\u00e1shti\u02bc"

    .line 222
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ny"

    .line 223
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "oc"

    const-string v6, "Discussion Utilizaire"

    .line 224
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "olo"

    const-string v6, "K\u00e4ytt\u00e4i pagin"

    .line 225
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "om"

    .line 226
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "or"

    const-string v6, "\u0b2c\u0b4d\u0b5f\u0b2c\u0b39\u0b3e\u0b30\u0b15\u0b3e\u0b30\u0b40\u0b19\u0b4d\u0b15 \u0b06\u0b32\u0b4b\u0b1a\u0b28\u0b3e"

    .line 227
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "os"

    const-string v6, "\u0410\u0440\u0445\u0430\u0439\u00e6\u0434\u0436\u044b \u043d\u044b\u0445\u0430\u0441"

    .line 228
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pa"

    const-string v6, "\u0a35\u0a30\u0a24\u0a4b\u0a02\u0a15\u0a3e\u0a30 \u0a17\u0a71\u0a32-\u0a2c\u0a3e\u0a24"

    .line 229
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pag"

    .line 230
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pam"

    .line 231
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pap"

    .line 232
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pcd"

    .line 233
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pdc"

    const-string v6, "Yuuser Dischbedutt"

    .line 234
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pfl"

    const-string v6, "Middawaida Dischbediere"

    .line 235
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pi"

    const-string v6, "\u0905\u0935\u092f\u0935 \u0938\u092e\u094d\u092d\u093e\u0938\u093f\u0924"

    .line 236
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pih"

    .line 237
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pl"

    const-string v6, "Dyskusja wikipedysty"

    .line 238
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pms"

    const-string v6, "Ciaciarade"

    .line 239
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pnb"

    const-string v6, "\u0648\u0631\u062a\u0646 \u06af\u0644 \u0628\u0627\u062a"

    .line 240
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pnt"

    const-string v6, "\u039a\u03b1\u03bb\u03ac\u03c4\u03c3\u03b5\u03bc\u03b1\u03bd \u03c7\u03c1\u03ae\u03c3\u03c4\u03b5"

    .line 241
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ps"

    const-string v6, "\u062f \u06a9\u0627\u0631\u0646 \u062e\u0628\u0631\u06d0 \u0627\u062a\u0631\u06d0"

    .line 242
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pt"

    const-string v6, "Usu\u00e1rio(a) Discuss\u00e3o"

    .line 243
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "qu"

    const-string v6, "Ruraq rimanakuy"

    .line 244
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rm"

    const-string v6, "Utilisader discussiun"

    .line 245
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rmy"

    const-string v6, "Jeno vakyarimata"

    .line 246
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rn"

    .line 247
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ro"

    const-string v6, "Discu\u021bie Utilizator"

    .line 248
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "roa-rup"

    .line 249
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "roa-tara"

    .line 250
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ru"

    .line 251
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rue"

    const-string v4, "\u0414\u0456\u0441\u043a\u0443\u0437\u0456\u044f \u0437 \u0445\u043e\u0441\u043d\u043e\u0432\u0430\u0442\u0435\u043b\u0451\u043c"

    .line 252
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rw"

    .line 253
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sa"

    const-string v4, "\u0938\u0926\u0938\u094d\u092f\u0938\u092e\u094d\u092d\u093e\u0937\u0923\u092e\u094d"

    .line 254
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sah"

    const-string v4, "\u041a\u044b\u0442\u0442\u0430\u0430\u0447\u0447\u044b \u044b\u0440\u044b\u0442\u044b\u044b\u0442\u0430"

    .line 255
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sat"

    const-string v4, "\u1c75\u1c6e\u1c75\u1c77\u1c5f\u1c68\u1c64\u1c6d\u1c5f\u1c79 \u1c5c\u1c5f\u1c5e\u1c62\u1c5f\u1c68\u1c5f\u1c63"

    .line 256
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sc"

    const-string v4, "Cuntierra usu\u00e0riu"

    .line 257
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "scn"

    const-string v4, "Discussioni utenti"

    .line 258
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sco"

    const-string v4, "Uiser collogue"

    .line 259
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sd"

    const-string v4, "\u0648\u0627\u067e\u0631\u0627\u0626\u064a\u0646\u062f\u0699 \u0628\u062d\u062b"

    .line 260
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "se"

    const-string v4, "Geavaheaddjes\u00e1gastallan"

    .line 261
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sg"

    .line 262
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sh"

    const-string v4, "Razgovor sa korisnikom"

    .line 263
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shn"

    const-string v4, "\u1022\u102f\u1015\u103a\u1087\u1075\u102f\u1019\u103a \u107d\u1030\u1088\u1078\u1082\u103a\u1089\u1010\u102d\u102f\u101d\u103a\u1038"

    .line 264
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "si"

    const-string v4, "\u0db4\u0dbb\u0dd2\u0dc1\u0dd3\u0dbd\u0d9a \u0dc3\u0dcf\u0d9a\u0da0\u0dca\u0da1\u0dcf\u0dc0"

    .line 265
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "simple"

    .line 266
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sk"

    const-string v4, "Diskusia s redaktorom"

    .line 267
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sl"

    const-string v4, "Uporabni\u0161ki pogovor"

    .line 268
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sm"

    .line 269
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sn"

    .line 270
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "so"

    .line 271
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sq"

    const-string v4, "P\u00ebrdoruesi diskutim"

    .line 272
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sr"

    const-string v4, "\u0420\u0430\u0437\u0433\u043e\u0432\u043e\u0440 \u0441\u0430 \u043a\u043e\u0440\u0438\u0441\u043d\u0438\u043a\u043e\u043c"

    .line 273
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "srn"

    const-string v4, "Taki fu masyin"

    .line 274
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ss"

    .line 275
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "st"

    .line 276
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stq"

    const-string v4, "Benutser Diskussion"

    .line 277
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "su"

    const-string v4, "Obrolan pamak\u00e9"

    .line 278
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sv"

    const-string v4, "Anv\u00e4ndardiskussion"

    .line 279
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sw"

    const-string v4, "Majadiliano ya mtumiaji"

    .line 280
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "szl"

    const-string v4, "Dyskusyjo u\u017cywacza"

    .line 281
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "szy"

    const-string v4, "pisubelidan tu kamu ni misaungayay sapimatatengil"

    .line 282
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ta"

    const-string v4, "\u0baa\u0baf\u0ba9\u0bb0\u0bcd \u0baa\u0bc7\u0b9a\u0bcd\u0b9a\u0bc1"

    .line 283
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tcy"

    const-string v4, "\u0cac\u0cb3\u0c95\u0cc6\u0ca6\u0cbe\u0cb0\u0cc6 \u0caa\u0cbe\u0ca4\u0cc6\u0cb0"

    .line 284
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "te"

    const-string v4, "\u0c35\u0c3e\u0c21\u0c41\u0c15\u0c30\u0c3f \u0c1a\u0c30\u0c4d\u0c1a"

    .line 285
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tet"

    const-string v4, "Diskusaun Uza-na\'in"

    .line 286
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tg"

    const-string v4, "\u0411\u0430\u04b3\u0441\u0438 \u043a\u043e\u0440\u0431\u0430\u0440"

    .line 287
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "th"

    const-string v4, "\u0e04\u0e38\u0e22\u0e01\u0e31\u0e1a\u0e1c\u0e39\u0e49\u0e43\u0e0a\u0e49"

    .line 288
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ti"

    const-string v4, "\u1270\u1320\u1243\u121a \u121d\u12ed\u12ed\u1325"

    .line 289
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tk"

    const-string v4, "Ulanyjy \u00e7eki\u015fme"

    .line 290
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tl"

    const-string v4, "Usapang tagagamit"

    .line 291
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tn"

    .line 292
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "to"

    .line 293
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tpi"

    const-string v4, "Toktok bilong yusa"

    .line 294
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tr"

    const-string v4, "Kullan\u0131c\u0131 mesaj"

    .line 295
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ts"

    .line 296
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tt"

    const-string v4, "\u041a\u0443\u043b\u043b\u0430\u043d\u0443\u0447\u044b \u0431\u04d9\u0445\u04d9\u0441\u0435"

    .line 297
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tum"

    .line 298
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tw"

    .line 299
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ty"

    .line 300
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tyv"

    const-string v4, "A\u0436\u044b\u0433\u043b\u0430\u043a\u0447\u044b \u0447\u0443\u0433\u0430\u0430"

    .line 301
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "udm"

    const-string v4, "\u0412\u0438\u043a\u0438\u0430\u0432\u0442\u043e\u0440 \u0441\u044f\u0440\u044b\u0441\u044c \u0432\u0435\u0440\u0430\u0441\u044c\u043a\u043e\u043d"

    .line 302
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ug"

    const-string v4, "\u0626\u0649\u0634\u0644\u06d5\u062a\u0643\u06c8\u0686\u0649 \u0645\u06c7\u0646\u0627\u0632\u0649\u0631\u0649\u0633\u0649"

    .line 303
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uk"

    const-string v4, "\u041e\u0431\u0433\u043e\u0432\u043e\u0440\u0435\u043d\u043d\u044f \u043a\u043e\u0440\u0438\u0441\u0442\u0443\u0432\u0430\u0447\u0430"

    .line 304
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ur"

    const-string v4, "\u062a\u0628\u0627\u062f\u0644\u06c2 \u062e\u06cc\u0627\u0644 \u0635\u0627\u0631\u0641"

    .line 305
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uz"

    const-string v4, "Foydalanuvchi munozarasi"

    .line 306
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ve"

    .line 307
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vec"

    const-string v4, "Discussion utente"

    .line 308
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vep"

    const-string v4, "Lodu k\u00e4vutajas"

    .line 309
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vi"

    const-string v4, "Th\u1ea3o lu\u1eadn Th\u00e0nh vi\u00ean"

    .line 310
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vls"

    const-string v4, "Discuusje gebruker"

    .line 311
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vo"

    const-string v4, "Gebanibespik"

    .line 312
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "wa"

    const-string v4, "Uzeu copene"

    .line 313
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "war"

    const-string v4, "Hiruhimangaw hiton gumaramit"

    .line 314
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "wo"

    const-string v4, "Waxtaani j\u00ebfandikukat"

    .line 315
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "wuu"

    .line 316
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "xal"

    const-string v4, "\u0414\u0435\u043c\u043d\u0447\u043d\u0430 \u0442\u0443\u0441\u043a \u043c\u0435\u0442\u043a\u04d9\u043d"

    .line 317
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "xh"

    .line 318
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "xmf"

    .line 319
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "yi"

    const-string v4, "\u05d1\u05d0\u05b7\u05e0\u05d9\u05e6\u05e2\u05e8 \u05e8\u05e2\u05d3\u05df"

    .line 320
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "yo"

    const-string v4, "\u1ecc\u0300r\u1ecd\u0300 on\u00ed\u1e63e"

    .line 321
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "za"

    const-string v4, "\u7528\u6237\u8ba8\u8bba"

    .line 322
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zea"

    .line 323
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zh"

    .line 324
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zh-hans"

    .line 325
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zh-hant"

    .line 326
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zh-classical"

    .line 327
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zh-min-nan"

    const-string v3, "I\u014dng-chi\u00e1 th\u00f3-l\u016bn"

    .line 328
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zh-yue"

    .line 329
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zu"

    .line 330
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "test"

    .line 331
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static valueFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lorg/wikipedia/staticdata/UserTalkAliasData;->DATA_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lorg/wikipedia/staticdata/UserTalkAliasData;->DATA_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 19
    :cond_0
    sget-object p0, Lorg/wikipedia/staticdata/UserTalkAliasData;->DATA_MAP:Ljava/util/Map;

    const-string v0, "en"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
