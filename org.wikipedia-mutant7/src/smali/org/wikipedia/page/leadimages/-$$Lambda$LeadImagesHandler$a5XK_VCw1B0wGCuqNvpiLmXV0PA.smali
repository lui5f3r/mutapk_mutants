.class public final synthetic Lorg/wikipedia/page/leadimages/-$$Lambda$LeadImagesHandler$a5XK_VCw1B0wGCuqNvpiLmXV0PA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/leadimages/-$$Lambda$LeadImagesHandler$a5XK_VCw1B0wGCuqNvpiLmXV0PA;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/page/leadimages/-$$Lambda$LeadImagesHandler$a5XK_VCw1B0wGCuqNvpiLmXV0PA;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->lambda$updateCallToAction$1(Ljava/lang/String;Ljava/lang/Boolean;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p1

    return-object p1
.end method
