.class final Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WikipediaLanguagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WikipediaLanguageItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/wikipedia/views/DefaultViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_FOOTER:I = 0x2

.field private static final VIEW_TYPE_HEADER:I = 0x0

.field private static final VIEW_TYPE_ITEM:I = 0x1


# instance fields
.field private checkboxEnabled:Z

.field final synthetic this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$1;)V
    .locals 0

    .line 176
    invoke-direct {p0, p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;-><init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-static {v0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->access$200(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 187
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    return v1
.end method

.method public synthetic lambda$onBindViewHolder$0$WikipediaLanguagesFragment$WikipediaLanguageItemAdapter(ILandroid/view/View;)V
    .locals 1

    .line 224
    iget-object p2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-static {p2}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->access$800(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)Landroidx/appcompat/view/ActionMode;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 225
    iget-object p2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-static {p2}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->access$200(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->access$900(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-static {p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->access$1000(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 227
    :cond_0
    iget-object p2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-static {p2}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->access$1100(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 228
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    add-int/lit8 p1, p1, -0x1

    const-string v0, "activity_result_lang_position_data"

    .line 229
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    iget-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 231
    iget-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$onViewAttachedToWindow$1$WikipediaLanguagesFragment$WikipediaLanguageItemAdapter(Lorg/wikipedia/views/DefaultViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 242
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p3

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 244
    :cond_1
    iget-object p2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-static {p2}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->access$608(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)I

    .line 245
    iget-object p2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-static {p2}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->access$700(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$onViewAttachedToWindow$2$WikipediaLanguagesFragment$WikipediaLanguageItemAdapter(Landroid/view/View;)V
    .locals 2

    .line 259
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lorg/wikipedia/language/LanguagesListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-static {v0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->access$400(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)Lorg/wikipedia/analytics/AppLanguageSettingsFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/AppLanguageSettingsFunnel;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "session_token"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    const/16 v1, 0x3b

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 262
    iget-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-static {p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->access$500(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 175
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->onBindViewHolder(Lorg/wikipedia/views/DefaultViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/wikipedia/views/DefaultViewHolder;I)V
    .locals 4

    .line 217
    instance-of v0, p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;

    if-eqz v0, :cond_1

    .line 218
    check-cast p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;

    .line 219
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-static {v0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->access$200(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;->bindItem(Ljava/lang/String;I)V

    .line 220
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;

    iget-boolean v2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->checkboxEnabled:Z

    invoke-virtual {v0, v2}, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->setCheckBoxEnabled(Z)V

    .line 221
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;

    iget-object v2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-static {v2}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->access$300(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-static {v3}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->access$200(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->setCheckBoxChecked(Z)V

    .line 222
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;

    iget-object v1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-static {v1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->access$200(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-boolean v1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->checkboxEnabled:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->setDragHandleEnabled(Z)V

    .line 223
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;

    new-instance v0, Lorg/wikipedia/settings/languages/-$$Lambda$WikipediaLanguagesFragment$WikipediaLanguageItemAdapter$JvJjL-kQlN4Hc7ieQVNAr4M49vA;

    invoke-direct {v0, p0, p2}, Lorg/wikipedia/settings/languages/-$$Lambda$WikipediaLanguagesFragment$WikipediaLanguageItemAdapter$JvJjL-kQlN4Hc7ieQVNAr4M49vA;-><init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method onCheckboxEnabled(Z)V
    .locals 0

    .line 281
    iput-boolean p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->checkboxEnabled:Z

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 175
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/views/DefaultViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/views/DefaultViewHolder;
    .locals 3

    .line 201
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 202
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const p2, 0x7f0c011e

    .line 205
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 206
    new-instance p2, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$HeaderViewHolder;

    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-direct {p2, v0, p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$HeaderViewHolder;-><init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    const p2, 0x7f0c0125

    .line 208
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 209
    new-instance p2, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$FooterViewHolder;

    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-direct {p2, v0, p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$FooterViewHolder;-><init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;Landroid/view/View;)V

    return-object p2

    .line 211
    :cond_1
    new-instance p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;

    iget-object p2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    new-instance v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;

    iget-object v1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2, v0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;-><init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;)V

    return-object p1
.end method

.method onMoveItem(II)V
    .locals 3

    .line 276
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-static {v0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->access$200(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 277
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 175
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {p0, p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->onViewAttachedToWindow(Lorg/wikipedia/views/DefaultViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lorg/wikipedia/views/DefaultViewHolder;)V
    .locals 3

    .line 238
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 239
    instance-of v0, p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;

    if-eqz v0, :cond_0

    .line 240
    move-object v0, p1

    check-cast v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;

    .line 241
    invoke-virtual {v0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;

    new-instance v2, Lorg/wikipedia/settings/languages/-$$Lambda$WikipediaLanguagesFragment$WikipediaLanguageItemAdapter$yIHHOWc-RuOCMr4oQrqrNyy_-ac;

    invoke-direct {v2, p0, p1}, Lorg/wikipedia/settings/languages/-$$Lambda$WikipediaLanguagesFragment$WikipediaLanguageItemAdapter$yIHHOWc-RuOCMr4oQrqrNyy_-ac;-><init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;Lorg/wikipedia/views/DefaultViewHolder;)V

    invoke-virtual {v1, v2}, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->setDragHandleTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 255
    invoke-virtual {v0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;

    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-virtual {p1, v0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->setCallback(Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView$Callback;)V

    goto :goto_1

    .line 256
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$FooterViewHolder;

    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->checkboxEnabled:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 258
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lorg/wikipedia/settings/languages/-$$Lambda$WikipediaLanguagesFragment$WikipediaLanguageItemAdapter$8nXQMWzLtprpRtFE_x2u7r1dNGY;

    invoke-direct {v0, p0}, Lorg/wikipedia/settings/languages/-$$Lambda$WikipediaLanguagesFragment$WikipediaLanguageItemAdapter$8nXQMWzLtprpRtFE_x2u7r1dNGY;-><init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 175
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {p0, p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->onViewDetachedFromWindow(Lorg/wikipedia/views/DefaultViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lorg/wikipedia/views/DefaultViewHolder;)V
    .locals 3

    .line 267
    instance-of v0, p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;

    if-eqz v0, :cond_0

    .line 268
    move-object v0, p1

    check-cast v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;

    .line 269
    invoke-virtual {v0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->setCallback(Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView$Callback;)V

    .line 270
    invoke-virtual {v0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;

    invoke-virtual {v0, v2}, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->setDragHandleTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 272
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
