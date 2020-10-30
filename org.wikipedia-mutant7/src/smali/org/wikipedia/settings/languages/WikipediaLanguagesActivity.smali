.class public Lorg/wikipedia/settings/languages/WikipediaLanguagesActivity;
.super Lorg/wikipedia/activity/SingleFragmentActivity;
.source "WikipediaLanguagesActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/activity/SingleFragmentActivity<",
        "Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;",
        ">;"
    }
.end annotation


# static fields
.field static final INVOKE_SOURCE_EXTRA:Ljava/lang/String; = "invokeSource"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;-><init>()V

    return-void
.end method

.method public static newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 15
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/wikipedia/settings/languages/WikipediaLanguagesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "invokeSource"

    .line 16
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic createFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesActivity;->createFragment()Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    move-result-object v0

    return-object v0
.end method

.method protected createFragment()Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;
    .locals 2

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "invokeSource"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->newInstance(Ljava/lang/String;)Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;->forceUpdateWidget(Landroid/content/Context;)V

    .line 27
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onDestroy()V

    return-void
.end method
