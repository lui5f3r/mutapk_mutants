.class public final synthetic Lorg/wikipedia/settings/-$$Lambda$SettingsPreferenceLoader$6auKmrTyrdo9QfUPIbucnVT6vRM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/settings/SettingsPreferenceLoader;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/settings/-$$Lambda$SettingsPreferenceLoader$6auKmrTyrdo9QfUPIbucnVT6vRM;->f$0:Lorg/wikipedia/settings/SettingsPreferenceLoader;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/settings/-$$Lambda$SettingsPreferenceLoader$6auKmrTyrdo9QfUPIbucnVT6vRM;->f$0:Lorg/wikipedia/settings/SettingsPreferenceLoader;

    invoke-virtual {v0, p1}, Lorg/wikipedia/settings/SettingsPreferenceLoader;->lambda$loadPreferences$4$SettingsPreferenceLoader(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
