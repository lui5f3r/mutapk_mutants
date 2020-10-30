.class public Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;
.super Ljava/lang/Object;
.source "ExclusiveBottomSheetPresenter.java"


# static fields
.field private static final BOTTOM_SHEET_FRAGMENT_TAG:Ljava/lang/String; = "bottom_sheet_fragment"


# instance fields
.field private currentDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    .line 52
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "bottom_sheet_fragment"

    .line 55
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/DialogFragment;

    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 59
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->currentDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 60
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 61
    iget-object p1, p0, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->currentDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 63
    :cond_2
    iput-object v0, p0, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->currentDialog:Landroid/app/Dialog;

    :cond_3
    :goto_0
    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V
    .locals 1

    .line 44
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->dismiss(Landroidx/fragment/app/FragmentManager;)V

    const-string v0, "bottom_sheet_fragment"

    .line 48
    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showAddToListDialog(Landroidx/fragment/app/FragmentManager;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)V
    .locals 0

    .line 24
    invoke-static {p2, p3}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->newInstance(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Lorg/wikipedia/readinglist/AddToReadingListDialog;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method public showAddToListDialog(Landroidx/fragment/app/FragmentManager;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 31
    invoke-static {p2, p3, p4}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->newInstance(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Landroid/content/DialogInterface$OnDismissListener;)Lorg/wikipedia/readinglist/AddToReadingListDialog;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method public showMoveToListDialog(Landroidx/fragment/app/FragmentManager;JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;ZLandroid/content/DialogInterface$OnDismissListener;)V
    .locals 6

    .line 40
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-wide v0, p2

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Lorg/wikipedia/readinglist/MoveToReadingListDialog;->newInstance(JLjava/util/List;Lorg/wikipedia/Constants$InvokeSource;ZLandroid/content/DialogInterface$OnDismissListener;)Lorg/wikipedia/readinglist/MoveToReadingListDialog;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method
