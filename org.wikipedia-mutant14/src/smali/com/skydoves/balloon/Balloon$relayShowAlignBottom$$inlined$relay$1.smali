.class public final Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Balloon.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/balloon/Balloon;->relayShowAlignBottom(Lcom/skydoves/balloon/Balloon;Landroid/view/View;)Lcom/skydoves/balloon/Balloon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBalloon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Balloon.kt\ncom/skydoves/balloon/Balloon$relay$1\n+ 2 Balloon.kt\ncom/skydoves/balloon/Balloon\n*L\n1#1,1355:1\n531#2,2:1356\n*E\n"
.end annotation


# instance fields
.field final synthetic $anchor$inlined:Landroid/view/View;

.field final synthetic $balloon:Lcom/skydoves/balloon/Balloon;

.field final synthetic this$0:Lcom/skydoves/balloon/Balloon;


# direct methods
.method public constructor <init>(Lcom/skydoves/balloon/Balloon;Lcom/skydoves/balloon/Balloon;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;->this$0:Lcom/skydoves/balloon/Balloon;

    iput-object p2, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;->$balloon:Lcom/skydoves/balloon/Balloon;

    iput-object p3, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;->$anchor$inlined:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;->this$0:Lcom/skydoves/balloon/Balloon;

    invoke-static {v0}, Lcom/skydoves/balloon/Balloon;->access$getDestroyed$p(Lcom/skydoves/balloon/Balloon;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;->$balloon:Lcom/skydoves/balloon/Balloon;

    .line 1356
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;->$anchor$inlined:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/skydoves/balloon/Balloon;->showAlignBottom(Landroid/view/View;)V

    :cond_0
    return-void
.end method
