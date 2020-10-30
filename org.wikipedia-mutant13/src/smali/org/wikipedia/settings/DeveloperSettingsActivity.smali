.class public Lorg/wikipedia/settings/DeveloperSettingsActivity;
.super Lorg/wikipedia/activity/SingleFragmentActivity;
.source "DeveloperSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/activity/SingleFragmentActivity<",
        "Lorg/wikipedia/settings/DeveloperSettingsFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;-><init>()V

    return-void
.end method

.method public static newIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 10
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/wikipedia/settings/DeveloperSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/wikipedia/settings/DeveloperSettingsActivity;->createFragment()Lorg/wikipedia/settings/DeveloperSettingsFragment;

    move-result-object v0

    return-object v0
.end method

.method public createFragment()Lorg/wikipedia/settings/DeveloperSettingsFragment;
    .locals 1

    .line 15
    invoke-static {}, Lorg/wikipedia/settings/DeveloperSettingsFragment;->newInstance()Lorg/wikipedia/settings/DeveloperSettingsFragment;

    move-result-object v0

    return-object v0
.end method
