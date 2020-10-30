.class public final synthetic Lorg/wikipedia/page/-$$Lambda$PageCacher$dmnZFsuAZ9-7RGWrpshBb9DPZj8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/PageTitle;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/-$$Lambda$PageCacher$dmnZFsuAZ9-7RGWrpshBb9DPZj8;->f$0:Lorg/wikipedia/page/PageTitle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/page/-$$Lambda$PageCacher$dmnZFsuAZ9-7RGWrpshBb9DPZj8;->f$0:Lorg/wikipedia/page/PageTitle;

    check-cast p1, Lretrofit2/Response;

    invoke-static {v0, p1}, Lorg/wikipedia/page/PageCacher;->lambda$loadIntoCache$0(Lorg/wikipedia/page/PageTitle;Lretrofit2/Response;)V

    return-void
.end method
