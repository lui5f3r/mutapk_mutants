.class Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "WikipediaLanguagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WikipediaLanguageItemHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/views/DefaultViewHolder<",
        "Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    .line 343
    invoke-direct {p0, p2}, Lorg/wikipedia/views/DefaultViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method bindItem(Ljava/lang/String;I)V
    .locals 2

    .line 347
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;

    iget-object v1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-static {v1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->access$1300(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->setContents(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
