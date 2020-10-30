.class final Lcom/skydoves/balloon/Balloon$initializeBalloonListeners$$inlined$with$lambda$1;
.super Ljava/lang/Object;
.source "Balloon.kt"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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

    iput-object p1, p0, Lcom/skydoves/balloon/Balloon$initializeBalloonListeners$$inlined$with$lambda$1;->this$0:Lcom/skydoves/balloon/Balloon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$initializeBalloonListeners$$inlined$with$lambda$1;->this$0:Lcom/skydoves/balloon/Balloon;

    invoke-virtual {v0}, Lcom/skydoves/balloon/Balloon;->dismiss()V

    .line 281
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$initializeBalloonListeners$$inlined$with$lambda$1;->this$0:Lcom/skydoves/balloon/Balloon;

    invoke-virtual {v0}, Lcom/skydoves/balloon/Balloon;->getOnBalloonDismissListener()Lcom/skydoves/balloon/OnBalloonDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/skydoves/balloon/OnBalloonDismissListener;->onBalloonDismiss()V

    :cond_0
    return-void
.end method
