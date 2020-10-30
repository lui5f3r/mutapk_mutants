.class final Lcom/skydoves/balloon/Balloon$initializeBalloonListeners$1;
.super Ljava/lang/Object;
.source "Balloon.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/balloon/Balloon;->initializeBalloonListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skydoves/balloon/Balloon;


# direct methods
.method constructor <init>(Lcom/skydoves/balloon/Balloon;)V
    .locals 0

    iput-object p1, p0, Lcom/skydoves/balloon/Balloon$initializeBalloonListeners$1;->this$0:Lcom/skydoves/balloon/Balloon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$initializeBalloonListeners$1;->this$0:Lcom/skydoves/balloon/Balloon;

    invoke-virtual {v0}, Lcom/skydoves/balloon/Balloon;->getOnBalloonClickListener()Lcom/skydoves/balloon/OnBalloonClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/skydoves/balloon/OnBalloonClickListener;->onBalloonClick(Landroid/view/View;)V

    .line 275
    :cond_0
    iget-object p1, p0, Lcom/skydoves/balloon/Balloon$initializeBalloonListeners$1;->this$0:Lcom/skydoves/balloon/Balloon;

    invoke-static {p1}, Lcom/skydoves/balloon/Balloon;->access$getBuilder$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/Balloon$Builder;

    move-result-object p1

    iget-boolean p1, p1, Lcom/skydoves/balloon/Balloon$Builder;->dismissWhenClicked:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/skydoves/balloon/Balloon$initializeBalloonListeners$1;->this$0:Lcom/skydoves/balloon/Balloon;

    invoke-virtual {p1}, Lcom/skydoves/balloon/Balloon;->dismiss()V

    :cond_1
    return-void
.end method
