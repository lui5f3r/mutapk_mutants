.class Lorg/wikipedia/language/LanguagesListActivity$LanguagesListItemHolder;
.super Lorg/wikipedia/language/LanguagesListActivity$DefaultViewHolder;
.source "LanguagesListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/language/LanguagesListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LanguagesListItemHolder"
.end annotation


# instance fields
.field private canonicalNameTextView:Landroid/widget/TextView;

.field private languageCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localizedNameTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/wikipedia/language/LanguagesListActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/language/LanguagesListActivity;Ljava/util/List;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 309
    iput-object p1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListItemHolder;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    .line 310
    invoke-direct {p0, p1, p2, p3}, Lorg/wikipedia/language/LanguagesListActivity$DefaultViewHolder;-><init>(Lorg/wikipedia/language/LanguagesListActivity;Ljava/util/List;Landroid/view/View;)V

    const p1, 0x7f09020a

    .line 311
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListItemHolder;->localizedNameTextView:Landroid/widget/TextView;

    const p1, 0x7f0901e6

    .line 312
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListItemHolder;->canonicalNameTextView:Landroid/widget/TextView;

    .line 313
    iput-object p2, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListItemHolder;->languageCodes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method bindItem(I)V
    .locals 3

    .line 318
    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListItemHolder;->languageCodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListItemHolder;->localizedNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListItemHolder;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    invoke-static {v1}, Lorg/wikipedia/language/LanguagesListActivity;->access$500(Lorg/wikipedia/language/LanguagesListActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListItemHolder;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    invoke-static {v0, p1}, Lorg/wikipedia/language/LanguagesListActivity;->access$600(Lorg/wikipedia/language/LanguagesListActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListItemHolder;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    iget-object v1, v1, Lorg/wikipedia/language/LanguagesListActivity;->progressBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    iget-object v1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListItemHolder;->canonicalNameTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListItemHolder;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    .line 325
    invoke-static {v0}, Lorg/wikipedia/language/LanguagesListActivity;->access$500(Lorg/wikipedia/language/LanguagesListActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
