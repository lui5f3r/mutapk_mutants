.class Lorg/wikipedia/language/LanguagesListActivity$LanguageSearchCallback;
.super Lorg/wikipedia/history/SearchActionModeCallback;
.source "LanguagesListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/language/LanguagesListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LanguageSearchCallback"
.end annotation


# instance fields
.field private languageAdapter:Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;

.field final synthetic this$0:Lorg/wikipedia/language/LanguagesListActivity;


# direct methods
.method private constructor <init>(Lorg/wikipedia/language/LanguagesListActivity;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    invoke-direct {p0}, Lorg/wikipedia/history/SearchActionModeCallback;-><init>()V

    .line 121
    iget-object p1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    iget-object p1, p1, Lorg/wikipedia/language/LanguagesListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;

    iput-object p1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguageSearchCallback;->languageAdapter:Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/language/LanguagesListActivity;Lorg/wikipedia/language/LanguagesListActivity$1;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lorg/wikipedia/language/LanguagesListActivity$LanguageSearchCallback;-><init>(Lorg/wikipedia/language/LanguagesListActivity;)V

    return-void
.end method


# virtual methods
.method protected getParentContext()Landroid/content/Context;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    return-object v0
.end method

.method protected getSearchHintString()Ljava/lang/String;
    .locals 2

    .line 154
    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100381

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .line 126
    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lorg/wikipedia/language/LanguagesListActivity;->access$202(Lorg/wikipedia/language/LanguagesListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/wikipedia/language/LanguagesListActivity;->access$302(Lorg/wikipedia/language/LanguagesListActivity;Z)Z

    .line 128
    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    invoke-static {v0, p1}, Lorg/wikipedia/language/LanguagesListActivity;->access$402(Lorg/wikipedia/language/LanguagesListActivity;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;

    .line 129
    invoke-super {p0, p1, p2}, Lorg/wikipedia/history/SearchActionModeCallback;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 1

    .line 146
    invoke-super {p0, p1}, Lorg/wikipedia/history/SearchActionModeCallback;->onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V

    .line 147
    iget-object p1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    iget-object p1, p1, Lorg/wikipedia/language/LanguagesListActivity;->emptyView:Lorg/wikipedia/views/SearchEmptyView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object p1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguageSearchCallback;->languageAdapter:Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;

    invoke-virtual {p1}, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->reset()V

    .line 149
    iget-object p1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/wikipedia/language/LanguagesListActivity;->access$402(Lorg/wikipedia/language/LanguagesListActivity;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;

    return-void
.end method

.method protected onQueryChange(Ljava/lang/String;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/wikipedia/language/LanguagesListActivity;->access$202(Lorg/wikipedia/language/LanguagesListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    iget-object p1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguageSearchCallback;->languageAdapter:Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;

    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    invoke-static {v0}, Lorg/wikipedia/language/LanguagesListActivity;->access$200(Lorg/wikipedia/language/LanguagesListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->setFilterText(Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    iget-object p1, p1, Lorg/wikipedia/language/LanguagesListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 138
    iget-object p1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    iget-object p1, p1, Lorg/wikipedia/language/LanguagesListActivity;->emptyView:Lorg/wikipedia/views/SearchEmptyView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    iget-object p1, p1, Lorg/wikipedia/language/LanguagesListActivity;->emptyView:Lorg/wikipedia/views/SearchEmptyView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
