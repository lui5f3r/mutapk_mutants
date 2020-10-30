.class public final Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewExtension.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1;


# direct methods
.method constructor <init>(Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1$2;->this$0:Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 77
    iget-object p1, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1$2;->this$0:Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1;

    iget-object p1, p1, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1;->$doAfterFinish:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
