.class public final synthetic Lorg/wikipedia/page/-$$Lambda$PageFragment$1$6H5JuTF8mdjdiwyQO_C7_a_SQYI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$AddToDefaultListCallback;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/PageFragment$1;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageFragment$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/-$$Lambda$PageFragment$1$6H5JuTF8mdjdiwyQO_C7_a_SQYI;->f$0:Lorg/wikipedia/page/PageFragment$1;

    return-void
.end method


# virtual methods
.method public final onMoveClicked(J)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/page/-$$Lambda$PageFragment$1$6H5JuTF8mdjdiwyQO_C7_a_SQYI;->f$0:Lorg/wikipedia/page/PageFragment$1;

    invoke-virtual {v0, p1, p2}, Lorg/wikipedia/page/PageFragment$1;->lambda$onAddToReadingListTabSelected$0$PageFragment$1(J)V

    return-void
.end method
