.class public interface abstract Lorg/wikipedia/page/PageFragment$Callback;
.super Ljava/lang/Object;
.source "PageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/PageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onPageAddToReadingList(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)V
.end method

.method public abstract onPageCloseActionMode()V
.end method

.method public abstract onPageDismissBottomSheet()V
.end method

.method public abstract onPageHideAllContent()V
.end method

.method public abstract onPageHideSoftKeyboard()V
.end method

.method public abstract onPageInitWebView(Lorg/wikipedia/views/ObservableWebView;)V
.end method

.method public abstract onPageLoadError(Lorg/wikipedia/page/PageTitle;)V
.end method

.method public abstract onPageLoadErrorBackPressed()V
.end method

.method public abstract onPageLoadMainPageInForegroundTab()V
.end method

.method public abstract onPageLoadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V
.end method

.method public abstract onPageMoveToReadingList(JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Z)V
.end method

.method public abstract onPageRemoveFromReadingLists(Lorg/wikipedia/page/PageTitle;)V
.end method

.method public abstract onPageSetToolbarElevationEnabled(Z)V
.end method

.method public abstract onPageSetToolbarFadeEnabled(Z)V
.end method

.method public abstract onPageShowLinkPreview(Lorg/wikipedia/history/HistoryEntry;)V
.end method

.method public abstract onPageStartSupportActionMode(Landroid/view/ActionMode$Callback;)V
.end method

.method public abstract onPageUpdateProgressBar(Z)V
.end method
