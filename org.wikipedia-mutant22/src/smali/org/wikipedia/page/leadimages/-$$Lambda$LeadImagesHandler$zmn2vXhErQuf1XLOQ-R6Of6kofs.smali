.class public final synthetic Lorg/wikipedia/page/leadimages/-$$Lambda$LeadImagesHandler$zmn2vXhErQuf1XLOQ-R6Of6kofs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/leadimages/LeadImagesHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/leadimages/-$$Lambda$LeadImagesHandler$zmn2vXhErQuf1XLOQ-R6Of6kofs;->f$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    iput-object p2, p0, Lorg/wikipedia/page/leadimages/-$$Lambda$LeadImagesHandler$zmn2vXhErQuf1XLOQ-R6Of6kofs;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/page/leadimages/-$$Lambda$LeadImagesHandler$zmn2vXhErQuf1XLOQ-R6Of6kofs;->f$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    iget-object v1, p0, Lorg/wikipedia/page/leadimages/-$$Lambda$LeadImagesHandler$zmn2vXhErQuf1XLOQ-R6Of6kofs;->f$1:Ljava/lang/String;

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->lambda$updateCallToAction$2$LeadImagesHandler(Ljava/lang/String;Landroid/util/Pair;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p1

    return-object p1
.end method
