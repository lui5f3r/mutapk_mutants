.class public Lorg/wikipedia/search/SearchActivity;
.super Lorg/wikipedia/activity/SingleFragmentActivity;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/activity/SingleFragmentActivity<",
        "Lorg/wikipedia/search/SearchFragment;",
        ">;"
    }
.end annotation


# static fields
.field static final QUERY_EXTRA:Ljava/lang/String; = "query"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;-><init>()V

    return-void
.end method

.method public static newIntent(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 22
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->WIDGET:Lorg/wikipedia/Constants$InvokeSource;

    if-ne p1, v0, :cond_0

    .line 23
    new-instance v0, Lorg/wikipedia/analytics/IntentFunnel;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/wikipedia/analytics/IntentFunnel;-><init>(Lorg/wikipedia/WikipediaApp;)V

    invoke-virtual {v0}, Lorg/wikipedia/analytics/IntentFunnel;->logSearchWidgetTap()V

    .line 26
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/wikipedia/search/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "invokeSource"

    .line 27
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "query"

    .line 28
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic createFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/wikipedia/search/SearchActivity;->createFragment()Lorg/wikipedia/search/SearchFragment;

    move-result-object v0

    return-object v0
.end method

.method public createFragment()Lorg/wikipedia/search/SearchFragment;
    .locals 3

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "invokeSource"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/Constants$InvokeSource;

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "query"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lorg/wikipedia/search/SearchFragment;->newInstance(Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;)Lorg/wikipedia/search/SearchFragment;

    move-result-object v0

    return-object v0
.end method
