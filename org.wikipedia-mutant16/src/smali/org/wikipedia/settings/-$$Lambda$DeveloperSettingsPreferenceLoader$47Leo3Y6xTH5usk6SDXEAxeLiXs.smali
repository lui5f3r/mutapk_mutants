.class public final synthetic Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$47Leo3Y6xTH5usk6SDXEAxeLiXs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$47Leo3Y6xTH5usk6SDXEAxeLiXs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$47Leo3Y6xTH5usk6SDXEAxeLiXs;

    invoke-direct {v0}, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$47Leo3Y6xTH5usk6SDXEAxeLiXs;-><init>()V

    sput-object v0, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$47Leo3Y6xTH5usk6SDXEAxeLiXs;->INSTANCE:Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$47Leo3Y6xTH5usk6SDXEAxeLiXs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p1}, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->lambda$loadPreferences$18(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
