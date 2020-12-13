# 1. Инициализация авиакомпанией

Agrmt: 			Ngtn: 			Ngtn: WaitingSupplier

			Cstm: 			addr: 1337
			Name: aviacompany

			Splr: 			addr: 1338
			Name: fuelcompany

			Dtls: 			Name: This very simple agreement
			addr: 1339


Tasks:
[]Negot: 			Ngtn: WaitingCustomer

PrChn: []
Phase: 			Phase: PhaseAgreement

bankAddress: 1339
paymentOrders: []


# 2. Поставщик отклоняет договор

Agrmt: 			Ngtn: 			Ngtn: WaitingCustomer

			Cstm: 			addr: 1337
			Name: aviacompany

			Splr: 			addr: 1338
			Name: fuelcompany

			Dtls: 			Name: This very simple agreement
			addr: 1339


Tasks:
[]Negot: 			Ngtn: WaitingCustomer

PrChn: []
Phase: 			Phase: PhaseAgreement

bankAddress: 1339
paymentOrders: []

#  Авиакомпания меняет договор вместе с банком, банк меняется только в договоре - в Campaign такого банка нет

Agrmt: 			Ngtn: 			Ngtn: WaitingSupplier

			Cstm: 			addr: 1337
			Name: aviacompany

			Splr: 			addr: 1338
			Name: fuelcompany

			Dtls: 			Name: This is another simple agreement
			addr: 1300


Tasks:
[]Negot: 			Ngtn: WaitingCustomer

PrChn: []
Phase: 			Phase: PhaseAgreement

bankAddress: 1339
paymentOrders: []

