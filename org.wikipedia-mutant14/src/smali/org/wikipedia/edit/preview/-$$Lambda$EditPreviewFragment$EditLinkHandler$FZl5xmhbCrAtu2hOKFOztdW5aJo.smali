.class public final synthetic Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$EditLinkHandler$FZl5xmhbCrAtu2hOKFOztdW5aJo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$EditLinkHandler$FZl5xmhbCrAtu2hOKFOztdW5aJo;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$EditLinkHandler$FZl5xmhbCrAtu2hOKFOztdW5aJo;->f$0:Ljava/lang/Runnable;

    invoke-static {v0, p1, p2}, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;->lambda$showLeavingEditDialogue$2(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method
