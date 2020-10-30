.class Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;
.super Lorg/wikipedia/language/LangLinksActivity$DefaultViewHolder;
.source "LangLinksActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/language/LangLinksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LangLinksItemViewHolder"
.end annotation


# instance fields
.field private articleTitleTextView:Landroid/widget/TextView;

.field private final languageEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;"
        }
    .end annotation
.end field

.field private localizedLanguageNameTextView:Landroid/widget/TextView;

.field private nonLocalizedLanguageNameTextView:Landroid/widget/TextView;

.field private pos:I

.field final synthetic this$0:Lorg/wikipedia/language/LangLinksActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/language/LangLinksActivity;Ljava/util/List;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 416
    iput-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    .line 417
    invoke-direct {p0, p1, p2, p3}, Lorg/wikipedia/language/LangLinksActivity$DefaultViewHolder;-><init>(Lorg/wikipedia/language/LangLinksActivity;Ljava/util/List;Landroid/view/View;)V

    const p1, 0x7f09020a

    .line 418
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;->localizedLanguageNameTextView:Landroid/widget/TextView;

    const p1, 0x7f09028b

    .line 419
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;->nonLocalizedLanguageNameTextView:Landroid/widget/TextView;

    const p1, 0x7f0901e6

    .line 420
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;->articleTitleTextView:Landroid/widget/TextView;

    .line 421
    iput-object p2, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;->languageEntries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method bindItem(I)V
    .locals 3

    .line 425
    iput p1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;->pos:I

    .line 426
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;->languageEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 427
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    invoke-static {v1}, Lorg/wikipedia/language/LangLinksActivity;->access$400(Lorg/wikipedia/language/LangLinksActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 430
    iget-object v2, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;->localizedLanguageNameTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;->articleTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    iget-object p1, p1, Lorg/wikipedia/language/LangLinksActivity;->langLinksProgress:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 434
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    invoke-static {p1, v0}, Lorg/wikipedia/language/LangLinksActivity;->access$500(Lorg/wikipedia/language/LangLinksActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 435
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    .line 436
    invoke-static {v1}, Lorg/wikipedia/language/LangLinksActivity;->access$400(Lorg/wikipedia/language/LangLinksActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/language/AppLanguageState;->getSystemLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 440
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;->nonLocalizedLanguageNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;->nonLocalizedLanguageNameTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 437
    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;->nonLocalizedLanguageNameTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    :cond_3
    :goto_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 449
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;->languageEntries:Ljava/util/List;

    iget v0, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;->pos:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 450
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    invoke-static {v0}, Lorg/wikipedia/language/LangLinksActivity;->access$400(Lorg/wikipedia/language/LangLinksActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/language/AppLanguageState;->addMruLanguageCode(Ljava/lang/String;)V

    .line 451
    new-instance v0, Lorg/wikipedia/history/HistoryEntry;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    .line 452
    iget-object v1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, p1, v2}, Lorg/wikipedia/page/PageActivity;->newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;Z)Landroid/content/Intent;

    move-result-object p1

    .line 453
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 454
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    invoke-static {p1}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 455
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
