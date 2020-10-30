.class Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$1;
.super Ljava/lang/Object;
.source "LinkPreviewDialog.java"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;


# direct methods
.method constructor <init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$1;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 306
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$1;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    invoke-static {v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->access$100(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;)Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$Callback;

    move-result-object v0

    .line 307
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    if-eqz v0, :cond_0

    .line 315
    iget-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$1;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    invoke-static {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->access$200(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;)Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$Callback;->onLinkPreviewShareLink(Lorg/wikipedia/page/PageTitle;)V

    :cond_0
    return v1

    :pswitch_1
    if-eqz v0, :cond_1

    .line 320
    iget-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$1;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    invoke-static {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->access$200(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;)Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$Callback;->onLinkPreviewCopyLink(Lorg/wikipedia/page/PageTitle;)V

    .line 322
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$1;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    return v1

    :pswitch_2
    if-eqz v0, :cond_2

    .line 310
    iget-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$1;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    invoke-static {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->access$200(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;)Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$Callback;->onLinkPreviewAddToList(Lorg/wikipedia/page/PageTitle;)V

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f090233
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
