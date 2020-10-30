.class final Lorg/wikipedia/views/ImagePreviewDialog$onViewCreated$1;
.super Ljava/lang/Object;
.source "ImagePreviewDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/views/ImagePreviewDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/views/ImagePreviewDialog;


# direct methods
.method constructor <init>(Lorg/wikipedia/views/ImagePreviewDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/views/ImagePreviewDialog$onViewCreated$1;->this$0:Lorg/wikipedia/views/ImagePreviewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lorg/wikipedia/views/ImagePreviewDialog$onViewCreated$1;->this$0:Lorg/wikipedia/views/ImagePreviewDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    return-void
.end method
