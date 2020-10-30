.class public Lorg/wikipedia/feed/mostread/MostReadArticlesActivity;
.super Lorg/wikipedia/activity/SingleFragmentActivity;
.source "MostReadArticlesActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/activity/SingleFragmentActivity<",
        "Lorg/wikipedia/feed/mostread/MostReadFragment;",
        ">;"
    }
.end annotation


# static fields
.field protected static final MOST_READ_CARD:Ljava/lang/String; = "item"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;-><init>()V

    return-void
.end method

.method public static newIntent(Landroid/content/Context;Lorg/wikipedia/feed/mostread/MostReadListCard;)Landroid/content/Intent;
    .locals 2

    .line 16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/wikipedia/feed/mostread/MostReadArticlesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    invoke-static {p1}, Lorg/wikipedia/json/GsonMarshaller;->marshal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "item"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic createFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/wikipedia/feed/mostread/MostReadArticlesActivity;->createFragment()Lorg/wikipedia/feed/mostread/MostReadFragment;

    move-result-object v0

    return-object v0
.end method

.method public createFragment()Lorg/wikipedia/feed/mostread/MostReadFragment;
    .locals 3

    .line 22
    const-class v0, Lorg/wikipedia/feed/mostread/MostReadItemCard;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "item"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/mostread/MostReadItemCard;

    invoke-static {v0}, Lorg/wikipedia/feed/mostread/MostReadFragment;->newInstance(Lorg/wikipedia/feed/mostread/MostReadItemCard;)Lorg/wikipedia/feed/mostread/MostReadFragment;

    move-result-object v0

    return-object v0
.end method
