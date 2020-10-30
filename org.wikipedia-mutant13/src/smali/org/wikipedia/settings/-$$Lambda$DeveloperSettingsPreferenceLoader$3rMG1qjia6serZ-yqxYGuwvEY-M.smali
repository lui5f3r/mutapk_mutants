.class public final synthetic Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$3rMG1qjia6serZ-yqxYGuwvEY-M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$3rMG1qjia6serZ-yqxYGuwvEY-M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$3rMG1qjia6serZ-yqxYGuwvEY-M;

    invoke-direct {v0}, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$3rMG1qjia6serZ-yqxYGuwvEY-M;-><init>()V

    sput-object v0, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$3rMG1qjia6serZ-yqxYGuwvEY-M;->INSTANCE:Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$3rMG1qjia6serZ-yqxYGuwvEY-M;

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

    invoke-static {p1}, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->lambda$loadPreferences$0(Landroidx/preference/Preference;)Z

    const/4 p1, 0x0

    throw p1
.end method
