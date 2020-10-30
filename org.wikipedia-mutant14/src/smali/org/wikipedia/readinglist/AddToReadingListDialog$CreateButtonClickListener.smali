.class Lorg/wikipedia/readinglist/AddToReadingListDialog$CreateButtonClickListener;
.super Ljava/lang/Object;
.source "AddToReadingListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/AddToReadingListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;


# direct methods
.method private constructor <init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$CreateButtonClickListener;->this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;Lorg/wikipedia/readinglist/AddToReadingListDialog$1;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/AddToReadingListDialog$CreateButtonClickListener;-><init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 190
    iget-object p1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$CreateButtonClickListener;->this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    iget-object p1, p1, Lorg/wikipedia/readinglist/AddToReadingListDialog;->readingLists:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    .line 191
    iget-object p1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$CreateButtonClickListener;->this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    const v0, 0x7f10035f

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 192
    iget-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$CreateButtonClickListener;->this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->dismiss()V

    .line 193
    iget-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$CreateButtonClickListener;->this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lorg/wikipedia/util/FeedbackUtil;->LENGTH_DEFAULT:I

    invoke-static {v0, p1, v1}, Lorg/wikipedia/util/FeedbackUtil;->makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$CreateButtonClickListener;->this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    invoke-static {p1}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->access$300(Lorg/wikipedia/readinglist/AddToReadingListDialog;)V

    :goto_0
    return-void
.end method
