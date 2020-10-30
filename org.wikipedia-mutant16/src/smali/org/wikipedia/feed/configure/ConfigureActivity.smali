.class public Lorg/wikipedia/feed/configure/ConfigureActivity;
.super Lorg/wikipedia/activity/SingleFragmentActivity;
.source "ConfigureActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/activity/SingleFragmentActivity<",
        "Lorg/wikipedia/feed/configure/ConfigureFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;-><init>()V

    return-void
.end method

.method public static newIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .line 14
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/wikipedia/feed/configure/ConfigureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "invokeSource"

    .line 15
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic createFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/wikipedia/feed/configure/ConfigureActivity;->createFragment()Lorg/wikipedia/feed/configure/ConfigureFragment;

    move-result-object v0

    return-object v0
.end method

.method protected createFragment()Lorg/wikipedia/feed/configure/ConfigureFragment;
    .locals 1

    .line 20
    invoke-static {}, Lorg/wikipedia/feed/configure/ConfigureFragment;->newInstance()Lorg/wikipedia/feed/configure/ConfigureFragment;

    move-result-object v0

    return-object v0
.end method
