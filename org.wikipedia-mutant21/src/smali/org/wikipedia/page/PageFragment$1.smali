.class Lorg/wikipedia/page/PageFragment$1;
.super Ljava/lang/Object;
.source "PageFragment.java"

# interfaces
.implements Lorg/wikipedia/page/action/PageActionTab$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/PageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/page/PageFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/page/PageFragment;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lorg/wikipedia/page/PageFragment$1;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAddToReadingListTabSelected$0$PageFragment$1(J)V
    .locals 6

    .line 231
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$1;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v3

    sget-object v4, Lorg/wikipedia/Constants$InvokeSource;->BOOKMARK_BUTTON:Lorg/wikipedia/Constants$InvokeSource;

    const/4 v5, 0x0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/wikipedia/page/PageFragment;->moveToReadingList(JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Z)V

    return-void
.end method

.method public onAddToReadingListTabSelected()V
    .locals 5

    const/4 v0, 0x0

    .line 204
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->shouldShowBookmarkToolTip(Z)V

    .line 205
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$1;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {v0}, Lorg/wikipedia/page/PageFragment;->access$100(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/page/PageViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->isInReadingList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment$1;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {v1}, Lorg/wikipedia/page/PageFragment;->access$200(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/page/PageActionTabLayout;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/page/PageFragment$1$1;

    invoke-direct {v2, p0}, Lorg/wikipedia/page/PageFragment$1$1;-><init>(Lorg/wikipedia/page/PageFragment$1;)V

    invoke-direct {v0, v1, v2}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;-><init>(Landroid/view/View;Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$Callback;)V

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment$1;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 228
    invoke-virtual {v1}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;->show(Lorg/wikipedia/page/PageTitle;)V

    goto :goto_0

    .line 230
    :cond_0
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment$1;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/page/PageFragment$1;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v2}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    sget-object v3, Lorg/wikipedia/Constants$InvokeSource;->BOOKMARK_BUTTON:Lorg/wikipedia/Constants$InvokeSource;

    new-instance v4, Lorg/wikipedia/page/-$$Lambda$PageFragment$1$6H5JuTF8mdjdiwyQO_C7_a_SQYI;

    invoke-direct {v4, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$1$6H5JuTF8mdjdiwyQO_C7_a_SQYI;-><init>(Lorg/wikipedia/page/PageFragment$1;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$AddToDefaultListCallback;)V

    :goto_0
    return-void
.end method

.method public onChooseLangTabSelected()V
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$1;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {v0}, Lorg/wikipedia/page/PageFragment;->access$300(Lorg/wikipedia/page/PageFragment;)V

    return-void
.end method

.method public onFontAndThemeTabSelected()V
    .locals 2

    .line 247
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$1;->this$0:Lorg/wikipedia/page/PageFragment;

    new-instance v1, Lorg/wikipedia/theme/ThemeChooserDialog;

    invoke-direct {v1}, Lorg/wikipedia/theme/ThemeChooserDialog;-><init>()V

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/PageFragment;->showBottomSheet(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    return-void
.end method

.method public onSearchTabSelected()V
    .locals 2

    .line 237
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$1;->this$0:Lorg/wikipedia/page/PageFragment;

    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->PAGE_ACTION_TAB:Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/PageFragment;->openSearchActivity(Lorg/wikipedia/Constants$InvokeSource;)V

    return-void
.end method

.method public onViewToCTabSelected()V
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$1;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {v0}, Lorg/wikipedia/page/PageFragment;->access$400(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/page/ToCHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/ToCHandler;->show()V

    return-void
.end method

.method public updateBookmark(Z)V
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$1;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {v0, p1}, Lorg/wikipedia/page/PageFragment;->access$500(Lorg/wikipedia/page/PageFragment;Z)V

    return-void
.end method
