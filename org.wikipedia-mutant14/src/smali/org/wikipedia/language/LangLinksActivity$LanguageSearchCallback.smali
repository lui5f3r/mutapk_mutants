.class Lorg/wikipedia/language/LangLinksActivity$LanguageSearchCallback;
.super Lorg/wikipedia/history/SearchActionModeCallback;
.source "LangLinksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/language/LangLinksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LanguageSearchCallback"
.end annotation


# instance fields
.field private langLinksAdapter:Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;

.field final synthetic this$0:Lorg/wikipedia/language/LangLinksActivity;


# direct methods
.method private constructor <init>(Lorg/wikipedia/language/LangLinksActivity;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    invoke-direct {p0}, Lorg/wikipedia/history/SearchActionModeCallback;-><init>()V

    .line 137
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    iget-object p1, p1, Lorg/wikipedia/language/LangLinksActivity;->langLinksList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;

    iput-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LanguageSearchCallback;->langLinksAdapter:Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/language/LangLinksActivity;Lorg/wikipedia/language/LangLinksActivity$1;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lorg/wikipedia/language/LangLinksActivity$LanguageSearchCallback;-><init>(Lorg/wikipedia/language/LangLinksActivity;)V

    return-void
.end method


# virtual methods
.method protected getParentContext()Landroid/content/Context;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    return-object v0
.end method

.method protected getSearchHintString()Ljava/lang/String;
    .locals 2

    .line 169
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10015c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    invoke-static {v0, p1}, Lorg/wikipedia/language/LangLinksActivity;->access$002(Lorg/wikipedia/language/LangLinksActivity;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;

    .line 141
    invoke-super {p0, p1, p2}, Lorg/wikipedia/history/SearchActionModeCallback;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 1

    .line 158
    invoke-super {p0, p1}, Lorg/wikipedia/history/SearchActionModeCallback;->onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V

    .line 159
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    invoke-static {p1}, Lorg/wikipedia/language/LangLinksActivity;->access$100(Lorg/wikipedia/language/LangLinksActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 160
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    const-string v0, ""

    invoke-static {p1, v0}, Lorg/wikipedia/language/LangLinksActivity;->access$102(Lorg/wikipedia/language/LangLinksActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    iget-object p1, p1, Lorg/wikipedia/language/LangLinksActivity;->langLinksEmpty:Lorg/wikipedia/views/SearchEmptyView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LanguageSearchCallback;->langLinksAdapter:Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;

    invoke-virtual {p1}, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->reset()V

    .line 164
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/wikipedia/language/LangLinksActivity;->access$002(Lorg/wikipedia/language/LangLinksActivity;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;

    return-void
.end method

.method protected onQueryChange(Ljava/lang/String;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/wikipedia/language/LangLinksActivity;->access$102(Lorg/wikipedia/language/LangLinksActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LanguageSearchCallback;->langLinksAdapter:Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;

    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    invoke-static {v0}, Lorg/wikipedia/language/LangLinksActivity;->access$100(Lorg/wikipedia/language/LangLinksActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->setFilterText(Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    iget-object p1, p1, Lorg/wikipedia/language/LangLinksActivity;->langLinksList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 150
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    iget-object p1, p1, Lorg/wikipedia/language/LangLinksActivity;->langLinksEmpty:Lorg/wikipedia/views/SearchEmptyView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LanguageSearchCallback;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    iget-object p1, p1, Lorg/wikipedia/language/LangLinksActivity;->langLinksEmpty:Lorg/wikipedia/views/SearchEmptyView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
