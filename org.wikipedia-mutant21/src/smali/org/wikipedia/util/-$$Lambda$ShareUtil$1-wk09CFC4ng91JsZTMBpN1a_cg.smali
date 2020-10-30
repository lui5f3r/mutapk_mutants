.class public final synthetic Lorg/wikipedia/util/-$$Lambda$ShareUtil$1-wk09CFC4ng91JsZTMBpN1a_cg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/util/-$$Lambda$ShareUtil$1-wk09CFC4ng91JsZTMBpN1a_cg;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/util/-$$Lambda$ShareUtil$1-wk09CFC4ng91JsZTMBpN1a_cg;->f$0:Landroid/content/Context;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lorg/wikipedia/util/ShareUtil;->lambda$shareImage$2(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method
