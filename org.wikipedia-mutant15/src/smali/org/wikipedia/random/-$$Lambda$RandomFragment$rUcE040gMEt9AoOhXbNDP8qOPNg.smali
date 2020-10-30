.class public final synthetic Lorg/wikipedia/random/-$$Lambda$RandomFragment$rUcE040gMEt9AoOhXbNDP8qOPNg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$AddToDefaultListCallback;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/random/RandomFragment;

.field public final synthetic f$1:Lorg/wikipedia/page/PageTitle;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/random/RandomFragment;Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/random/-$$Lambda$RandomFragment$rUcE040gMEt9AoOhXbNDP8qOPNg;->f$0:Lorg/wikipedia/random/RandomFragment;

    iput-object p2, p0, Lorg/wikipedia/random/-$$Lambda$RandomFragment$rUcE040gMEt9AoOhXbNDP8qOPNg;->f$1:Lorg/wikipedia/page/PageTitle;

    return-void
.end method


# virtual methods
.method public final onMoveClicked(J)V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/random/-$$Lambda$RandomFragment$rUcE040gMEt9AoOhXbNDP8qOPNg;->f$0:Lorg/wikipedia/random/RandomFragment;

    iget-object v1, p0, Lorg/wikipedia/random/-$$Lambda$RandomFragment$rUcE040gMEt9AoOhXbNDP8qOPNg;->f$1:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0, v1, p1, p2}, Lorg/wikipedia/random/RandomFragment;->lambda$onAddPageToList$0$RandomFragment(Lorg/wikipedia/page/PageTitle;J)V

    return-void
.end method
